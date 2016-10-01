require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'sinatra/cross_origin'

require 'open-uri'
require 'net/http'
require 'json'

enable :cross_origin

set :allow_origin, :any
set :allow_methods, [:get, :post, :options]
set :allow_credentials, true
set :max_age, "1728000"
set :expose_headers, ['Content-Type']

options "*" do
  response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
  200
end

get '/search/:place' do
  cross_origin
  user_place = params[:place]
  uri = URI("http://distance.search.olp.yahooapis.jp/OpenLocalPlatform/V1/distance")

  Ziro.all.each do |ziro|
    latitude = ziro.latitude
    longitude = ziro.longitude
    place = longitude.to_s + "," + latitude.to_s
    uri.query = URI.encode_www_form({
      appid: "dj0zaiZpPVFjOTVWRk15NHZjNCZzPWNvbnN1bWVyc2VjcmV0Jng9NDY-",
      coordinates: user_place + " " + place,
      output: "json"
    })
    res = Net::HTTP.get_response(uri)
    _distance = JSON.parse(res.body)["Feature"][0]["Geometry"]["Distance"]
    ziro.update({
      distance: _distance
    })
  end
  
  Ziro.all.order("distance ASC").take(38).to_json
  # erb :index
end
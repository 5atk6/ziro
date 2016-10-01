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

get '/' do
  File.read('views/index.html')
  # erb :index
end

get '/search/:place' do
  cross_origin
  user_place = params[:place]
  user_latitude = user_place.split(",")[1]
  user_longitude = user_place.split(",")[0]

  Ziro.all.each do |ziro|
    latitude = ziro.latitude
    longitude = ziro.longitude
    diff_latitude = user_latitude.to_f - latitude  
    diff_longtitude =  user_longitude.to_f - longitude
    added_distance =  diff_latitude**2 + diff_longtitude**2
    
    _distance = (Math.sqrt(added_distance)) * 111.263283 # http://mononofu.hatenablog.com/entry/20090324/1237894846
    
    ziro.update({
      distance: _distance
    })
  end
  
  Ziro.all.order("distance ASC").take(38).to_json
  # erb :index
end
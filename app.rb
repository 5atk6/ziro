require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'sinatra/cross_origin'

# configure do
  enable :cross_origin
# end

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

get '/search/:name' do
    cross_origin
    name = paramas[:name]
    
end

post '/test' do
  'ttt'
end
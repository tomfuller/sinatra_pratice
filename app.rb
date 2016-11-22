require 'sinatra'
require 'shotgun'

get '/' do
  'Hello World!'
end

get '/secret' do
  'shhh its a secret, dont tell anyone'
end

get '/new' do
  'does this work?'
end

get '/cat' do
  erb(:index)
end

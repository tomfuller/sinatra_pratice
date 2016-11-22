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

get '/random-cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

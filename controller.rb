require 'sinatra'
require 'json'


class HelloWorldApp < Sinatra::Base
  get '/' do
    "Hello, world!"
  end

  get '/json' do
    my_hash = JSON.parse('{"hello": "goodbye"}')
    "hello"
    p "#{my_hash}"
  end

  get '/temperature' do
    "hello"
    
  end

  post '/temperature' do
    session[:temp] =JSON.parse(request.body.read.temperature)
    session[:temp]
    201
  end
end

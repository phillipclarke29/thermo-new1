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

  get '/weather' do
    "hello"
  
  end

  post '/weather' do
    @weather =JSON.parse(request.body.read)
    p @weather
    201
  end
end

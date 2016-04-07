require 'sinatra/base'
require 'pp'
require 'json'

class App < Sinatra::Base
  post '/callback' do
    json = JSON.parse(request.body.read)
    pp json

    "Hi"
  end
end

run App

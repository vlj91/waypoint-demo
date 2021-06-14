require 'json'
require 'sinatra'

get '/' do
  JSON.generate([id: 1234, title: 'Some task'])
end

get '/healthcheck' do
  status 200
  body "OK"
end

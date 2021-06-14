require 'json'
require 'sinatra'

get '/' do
  JSON.generate([{first_name: 'Barney', last_name: 'Rubble'}])
end

get '/healthcheck' do
  status 200
  body "OK"
end

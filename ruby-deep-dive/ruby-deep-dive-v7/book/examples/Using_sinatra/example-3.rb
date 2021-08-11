
require 'sinatra'
require 'base64'

get '/encode/:string' do
  Base64.strict_encode64(params[:string])
end

get '/decode/:string' do
  Base64.strict_decode64(params[:string])
end

require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'haml'
require 'active_record'

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "/tmp/sinatra.db"
)

class User < ActiveRecord::Base
end

class Vote < ActiveRecord::Base
end

after do
    ActiveRecord::Base.clear_active_connections!
end

get '/votes' do
    @votes = Vote.all.order(:id)
end

post '/vote' do
    vote_name = params[:name]
    p vote_name
    vote = Vote.find_or_create_by(id: 1, name: vote_name)

    # vote.count += 1
    # vote.save!

    "Count updated!"
end

get '/' do
    # This will render 'views/index.haml'
    haml :index
end

get '/hello' do 
    "Hello World!"
end

get '/:name' do
   params[:name] 
end

get '/encode/:string' do 
    Base64.strict_encode64(params[:string])
end

get '/decode/:string' do
    Base64.strict_decode64(params[:string])
end

post '/create_user' do
    "User #{params[:name]} created!"
end




require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'postgres',
  user: 'postgres'
)

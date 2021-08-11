
get '/' do
  @votes = Vote.all.order(:id)
  haml :index
end

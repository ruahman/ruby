
post '/vote' do
  vote_name = params[:name]

  vote = Vote.find_or_create_by(name: vote_name)

  vote.count += 1
  vote.save!

  "Count updated!"
end

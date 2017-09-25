get '/profile/:id' do

  @rounds = Round.find_by(user_id: current_user.id)

  erb :'profile/index'
end

get '/profile/stats' do
  erb :'profile/stats'
end

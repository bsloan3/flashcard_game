get '/profile/:id' do

  @rounds = Round.where(user_id: current_user.id)
  @first_try = Round.where(guesses: "true")
  erb :'profile/index'
end

get '/profile/stats' do
  erb :'profile/stats'
end

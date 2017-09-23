# create new user
get '/users/new' do

  erb :'users/new'
end

# log out
get '/users/logout' do
  session.clear
  redirect "/"
end

get '/users/:id' do
  @all_decks = Deck.all

  erb :'users/index'
end

post '/users' do
  # puts params[:user]
  @user = User.new(params[:user])
  if @user.save
    redirect "/"
  else
    #add display error
    erb :"/users/new"
  end
end

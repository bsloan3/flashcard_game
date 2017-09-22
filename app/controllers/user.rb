# log out
get '/users/logout' do
  session.clear
  redirect "/"
end

# create new user
get '/users/new' do

  erb :'users/new'
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


# once logged in

get '/users/:id' do

  erb :'users/index'
end


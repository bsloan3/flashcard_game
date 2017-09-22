# home log in page
get '/' do

  erb :index
end

# log in
post '/login' do
  @user = User.find_by(username: params[:user][:username])

  if User.authenticate(params[:user][:username], params[:user][:password])
    session[:user_id]  = @user.id
    redirect "/users/#{@user.id}"
  else
    # @errors
    erb :index
  end
end

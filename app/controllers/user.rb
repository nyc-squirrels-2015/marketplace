# This looks like you're showing Categories. Should it be
#  in the Categories controller?
get '/' do
  if current_user
    @categories = Category.all
    erb :'categories/all'
  else
    erb :login
  end
end

get '/login' do
  erb :login
end

# this has nothing to do with User creation. Logging in and out
# creates a session, so it should be in a session.rb controller

post '/login' do
  user = User.authenticate(params[:email],params[:password])
  if user
    session[:user] = user
    redirect '/categories'
  else
    redirect '/login'
  end


end

get '/edit/:id' do
  @user = User.find(params[:id])
  erb :edit
end


post '/edit_name' do
  session[:user].update_attributes(name: params[:name])
  @user = session[:user]
  redirect "/edit/#{@user.id}"
end

post '/edit_email' do
  if valid_email(params[:email])
    session[:user].update_attributes(email: params[:email])
  else
    @message= "This is not a valid email"
  end
  @user = session[:user]
  redirect "/edit/#{@user.id}"
end


# passwords must match, message displayed in the edit page, next to the field
post '/edit_password' do
  if params[:password] == params[:password_confirmation]
    session[:user].update_attributes(password: params[:password])
  else
    @message = "The passwords must match"
  end
  @user = session[:user]
  redirect "/edit/#{@user.id}"
end

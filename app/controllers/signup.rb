get '/signup' do
  erb :signup
end



post '/signup' do
  name = params[:name]
  email = params[:email]
  password=params[:password]
  if name && email && password == params[:password_confirmation]
    session[:user]=User.create(name: name, email: email, password_digest: password)
    redirect '/categories'
  else
    redirect '/signup'
  end
end

# this is an action on a session, you're destroying it. 
# What controller does this belong in?

get '/logout' do
  session.delete(:user)
  redirect '/'
end

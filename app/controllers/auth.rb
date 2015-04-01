get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end

get '/logout' do
  current_user.id = nil
  redirect '/'
end
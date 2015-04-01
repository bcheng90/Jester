get '/signup' do
  erb :'auth/signup'
end

get '/login' do
  erb :'auth/login'
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

post '/signup' do
  user = User.new(params)
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/signup'
  end
end

put '/login' do
  user = User.find_by(name: params[:name])
  if user.try(:authenticate, (params[:password]))
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end
# Get Routes

get '/joke/new' do
  if current_user
    erb :'jokes/new'
  else
    redirect '/login'
  end
end

get '/joke/:id/edit' do
  @joke = Joke.find_by(id: params[:id])
  erb :'jokes/edit'
end

get '/joke/:id/delete' do
  @joke = Joke.find_by(id: params[:id])
  erb :'jokes/delete'
end

get '/joke/:id' do
  @joke = Joke.find_by(id: params[:id])
  erb :'jokes/show'
end

# Update Routes

post '/joke/new' do
  new_joke = Joke.new(line1: params[:line1], line2: params[:line2], user_id: current_user.id)
  if new_joke.save
    redirect "/joke/#{new_joke.id}"
  else
    [404, "WHY SO SERIOUS?"]
  end
end

put '/joke/:id' do
  joke = Joke.find_by(id: params[:id])
  joke.update_attributes(line1: params[:line1],
                         line2: params[:line2],
                         user_id: current_user.id)
  redirect "/joke/#{joke.id}"
end

delete '/joke/:id' do
  joke = Joke.find_by(id: params[:id])
  joke.destroy
  redirect '/'
end
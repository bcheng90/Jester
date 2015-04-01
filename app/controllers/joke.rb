get '/joke/new' do
  erb :'joke/new'
end

get '/joke/:id' do
  @joke = Joke.find_by(id: params[:id])
  erb :'joke/show'
end
get '/' do
  @jokes=Joke.all
  @comments=Comment.all
  erb :index
end
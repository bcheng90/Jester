post '/comment' do
  comment = Comment.new(message: params[:message], user_id: current_user.id, joke_id: params[:joke_id])
  if comment.save
    redirect "/joke/#{params[:joke_id]}"
  else
    [404, "Where you tryna go?"]
  end
end
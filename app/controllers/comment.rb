# Get Routes
get '/joke/:joke_id/comments/:id/edit' do
  @comment = Comment.find_by(joke_id: params[:joke_id], id: params[:id])
  erb :'comments/edit'
end

get '/joke/:joke_id/comments/:id/delete' do
  @comment =Comment.find_by(joke_id: params[:joke_id], id: params[:id])
  erb :'comments/delete'
end

# Update Routes
post '/comment' do
  comment = Comment.new(message: params[:message], user_id: current_user.id, joke_id: params[:joke_id])
  if comment.save
    redirect "/joke/#{params[:joke_id]}"
  else
    [404, "Where you tryna go?"]
  end
end

put '/joke/:joke_id/comments/:id/edit' do
  comment = Comment.find_by(joke_id: params[:joke_id], id: params[:id])
  if comment
    comment.update_attributes(message: params[:message])
    comment.save
    redirect "/joke/#{comment.joke_id}"
  else
    [404, "WHERE ARE THE EDITS?"]
  end
end

delete '/joke/:joke_id/comments/:id/delete' do
  comment = Comment.find_by(joke_id: params[:joke_id], id: params[:id])
  if comment
    comment.destroy
    redirect "/joke/#{comment.joke_id}"
  else
    [404, "THE COMMENTS NOT HERE! HEHEHEHHEEhhehehe"]
  end
end
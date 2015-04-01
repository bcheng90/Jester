def current_user
  session[:user_id] ? return User.find(session[:user_id]) : return nil
end
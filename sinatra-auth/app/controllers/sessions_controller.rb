class SessionsController < ApplicationController

  post '/login' do
    @user = User.find_by_username(params[:user][:username])
    if @user.password_verified(params[:user][:password])
      session[:user_id] = user.id
      redirect to '/books'
    else
      erb :home
    end
  end

  delete '/logout'
    session.clear
  end
  

end
class UsersController < ApplicationController

  get '/users/new' do
    @user = User.new
    erb :'users/new'
  end

  post '/users' do
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect to '/books'
    else
      erb :'users/new'
    end
  end
  

end
class ApplicationController < Sinatra::Base

  helpers Sinatra::Cookies
  set :views, './app/views'
  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  
  get '/' do
    @user = User.new
    @color = cookies[:color]
    erb :home
  end

  get '/red' do
    cookies[:color] = 'red'
    @color = cookies[:color]
    erb :color
  end

  get '/blue' do
    cookies[:color] = 'blue'
    @color = cookies[:color]
    erb :color
  end

  

  
end

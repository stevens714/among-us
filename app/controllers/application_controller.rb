require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "z2RgeJ0pi4CcGTdNUuLuSPMtI7cYu0ItTMHHVSKDF6KCgivBQw2jBf2vdvr7j0S1
    "
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def require_login
    unless logged_in?
      redirect '/login'
    end
  end

  # def authorize
  #   redirect '/characters' if @character.user_id != current_user.id
  # end
 
end
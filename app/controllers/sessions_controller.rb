class SessionsController < ApplicationController

    #user can login
    get '/login' do
        erb :'users/login'
    end

    
    post '/login' do
        user = User.find_by_username(params[:username])
        if user
          if user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/characters'
          else
            @error = "Seems sus, try again"
            erb :'users/login'
          end
        else
          @error = "I'm sorry, that user does not exist....yet! 
          <br><br>
          Either try to login again or navigate to the sign-up page!"
          erb :'users/login'
        end
      end
    
    
    # post '/login' do

    #     if params["username"].empty? || params["password"].empty?
    #         @error = "Seems sus, try again"
    #         erb :'users/login'
    #     else
    #     user = User.find_by_username(params[:username])
    #         if user.authenticate(params[:password])
    #             session[:user_id] = user.id
    #             redirect '/characters'
    #         else
    #             @error = "Sorry imposter, not today!"
    #             erb :'users/login'
    #         end
    #     end
    # end




    #user can logout

    get '/logout' do
            session.clear
            redirect '/login'
    end
end
class SessionsController < ApplicationController
    # before_action :authorized, except: [:index, :show]

    def home
        @events = Event.all
    end
    
    def about
    end

    def login
        @user = User.new
    end

    def process_login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user.id)
        else
            if params[:username] == "" || params[:password] == ""
                flash.now[:error] = "- Text fields cannot be empty"
            else
                flash.now[:error] = "- The username or password is incorrect"
            end
            render :login
        end
    end

    def logout
        session[:user_id] = nil
        redirect_to sessions_login_path
    end
end
class SessionsController < ApplicationController
    def home
        @events = Event.all
    end

    def login
        @user = User.new
    end

    def process_login
        #refactor with form_tag syntax
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user.id)
        else
            render :login
        end
    end
end
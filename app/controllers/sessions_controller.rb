class SessionsController < ApplicationController
    before_action :authorized, except: [:login, :login_process, :register, :register_process]

    def login
        @user = User.new
    end

    def login_process
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

    def register
        @user = User.new
    end

    def register_process
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user.id)
        else
            render :register
        end
    end

    def logout
        session[:user_id] = nil
        redirect_to root_path
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation)
    end

end
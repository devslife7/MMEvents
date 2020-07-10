class ApplicationController < ActionController::Base
    helper_method :current_user # this allows you to call this method inside view

    def homepage
    end

    def about
    end

    # returns current user instance
    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def logged_in?
        # if current_user
        #     return true
        # else
        #     return false
        # end
        # current_user? true : false
        !!current_user
    end

    def authorized
        unless session[:user_id]
            flash[:access_denied] = "Access Denied!\nYou need to log in or register to have full access to the sites features."
            redirect_to login_path
        end
        # redirect_to login_path unless session[:user_id]
    end
end

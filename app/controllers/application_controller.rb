class ApplicationController < ActionController::Base
    
    helper_method :current_user, :logged_in?
    #------------------------------------- current_user method. ---------------------------------------
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    #--------------------------------------------------------------------------------------------------
    #------------------------------------- logged_in? method. ---------------------------------------
    def logged_in?
        !!current_user  
    end
    #--------------------------------------------------------------------------------------------------
    #------------------------------------- Current_user method. ---------------------------------------
    def require_user
        if !(logged_in?)
            redirect_to signin_path, alert: "You must sign in."
        end
    end
    #--------------------------------------------------------------------------------------------------
end

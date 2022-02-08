class SessionsController < ApplicationController
    # ----------------------------------------- NEW --------------------------------------------
    def new
        @user = User.new
    end
    # --------------------------------------------------------------------------------------------
    # ----------------------------------------- CREATE --------------------------------------------
    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Signed up succesfully."
        else
            redirect_to signin_path, alert: "Invalid params."
        end
    end
    # --------------------------------------------------------------------------------------------
    # ----------------------------------------- NEW --------------------------------------------
    def destroy
        session[:user_id] = nil
        redirect_to signin_path, alert: "Signed out."
    end
    # --------------------------------------------------------------------------------------------
end

require 'byebug'

class SessionsController < ApplicationController

  helper_method :log_in_user!, :logged_in?, :current_user

    def new
      render :new
    end

    def create
      @user = User.find_by_credentials(
        user_params[:email],
        user_params[:password]
      )
      if @user
        @user.reset_session_token!
        log_in_user!
        redirect_to user_url(@user)
      else
        flash[:errors] = ["Unable to login!"]
        render :new
      end
    end

    def destroy
        current_user.reset_session_token!
        session[:session_token] = nil
        current_user = nil
        redirect_to new_session_url
    end


    private

    def user_params
      params.require(:user).permit(:email, :password)
    end



end

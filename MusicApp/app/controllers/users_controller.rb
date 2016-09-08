class UsersController < ApplicationController

  helper_method :log_in_user!, :logged_in?

  def index
    @users = User.all
    render:index
  end

  def new
    render :new
  end

  def create
    # Add functionality to auto log in user when created
    @user = User.new(user_params)
    if @user.save
      render text: "placeholder for index page"
    else
      flash[:errors] = ["Error! No user created!"]
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end


  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

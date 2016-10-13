class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @tools = @user.tools
    @reviews = Review.where(recipient_id: @user.id)
  end

  def new
  end

  def create
    p user_params
    @user = User.create(user_params)
    @tools = @user.tools
    p @user.errors
    session[:id] = @user.id
    render 'show'
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :address, :password )
  end
end

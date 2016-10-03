
class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(session[:id])
    @tools = @user.tools
  end
end

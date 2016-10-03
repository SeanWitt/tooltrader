class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      p "i got here"
      session[:id] =  @user.id
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end

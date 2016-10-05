class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session,
      if: Proc.new { |c| c.request.format =~ %r{application/json} }

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end
end

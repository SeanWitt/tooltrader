
class WelcomeController < ApplicationController
  def index
    if !current_user
      redirect_to action: 'landing'
    end
  end

  def landing
  end
end

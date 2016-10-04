
class WelcomeController < ApplicationController
  def index
    @type = Type.all
  end
end

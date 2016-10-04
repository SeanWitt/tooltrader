class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.create
  end

  def nearby
    nearby_users = current_user.nearby_users(15)
    @tools = nearby_users.flat_map { |user| user.tools }
    # binding.pry
  end

end

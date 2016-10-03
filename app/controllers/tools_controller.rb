class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def nearby
    nearby_users = current_user.nearby_users(10)
    @tools = nearby_users.flat_map { |user| user.tools }
  end
end

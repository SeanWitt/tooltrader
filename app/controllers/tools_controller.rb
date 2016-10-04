class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    param = params["tool"]
    @tool = Tool.create(display_name: param["display_name"], make: param["make"], type_id: params["type_id"], user_id: current_user.id)
    redirect_to user_path(current_user)
  end

  def nearby
    nearby_users = current_user.nearby_users(15)
    @tools = nearby_users.flat_map { |user| user.tools }
    # binding.pry
  end

  private

  def tool_params
    params.require(:tool).permit(:display_name, :make, :type_id, :user_id)
  end

end

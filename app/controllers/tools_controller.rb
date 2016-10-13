class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    param = params["tool"]
    @tool = Tool.create(display_name: param["display_name"], make: param["make"], tool_model: param["tool_model"], type_id: params["type_id"], description: param["description"], user_id: current_user.id)
    p @tool.errors
    redirect_to user_path(current_user)
  end

  def nearby
    nearby_users = current_user.nearby_users(15)
    @tools = nearby_users.flat_map { |user| user.tools }
    # binding.pry
  end

  def hide
    @tool = Tool.find(params[:id])
    @tool.hidden = true
    @tool.save
    redirect_to user_path(current_user)
  end

  def unhide
    @tool = Tool.find(params[:id])
    @tool.hidden = false
    @tool.save
    redirect_to user_path(current_user)
  end

  def loan
    @tool = Tool.find(params[:id])
    @tool.loaned = true
    @tool.save
    redirect_to user_path(current_user)
  end

  def return_loan
    @tool = Tool.find(params[:id])
    @tool.loaned = false
    @tool.save
    redirect_to user_path(current_user)
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to user_path(current_user)
  end

  private

  def tool_params
    params.require(:tool).permit(:display_name, :make, :type_id, :user_id)
  end

end

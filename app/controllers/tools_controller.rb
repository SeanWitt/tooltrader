class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def new
  end


end

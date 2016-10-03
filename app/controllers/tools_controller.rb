class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def new
  end

  def nearby
    @tools = Tool.all.map do |person|
      current
    end
  end

end

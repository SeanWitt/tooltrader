class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def nearby
    @tools = Tool.all.map do |person|
      current
    end
  end
end

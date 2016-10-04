class TypesController < ApplicationController

  def index
    @types = Type.all
  end

  def search
    nearby_users = current_user.nearby_users(15)
    @tools = nearby_users.flat_map { |user| user.tools }
    p @tools
    @tools_nearby = []
    @tools.each do |tool|
      p "________________"
      p tool.type.name
      p params[:name]
      if tool.type.name == params[:name]
        p tool
        @tools_nearby << tool
        p @tools_nearby
      end
    end
    @tools_nearby
  end

end

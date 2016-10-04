class TypesController < ApplicationController

  def index
    @types = Type.all
  end

  def search
    nearby_users = current_user.nearby_users(15)
    @tools = nearby_users.flat_map { |user| user.tools }
    @tools_nearby = []
    @tools.each do |tool|
      if tool.type.name.downcase == params[:name].downcase
        @tools_nearby << tool
      end
    end
  end

end

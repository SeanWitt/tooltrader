class TypesController < ApplicationController

  def index
    @types = Type.all
  end

  def search
    nearby_users = current_user.nearby_users(15)
    @tools = nearby_users.flat_map { |user| user.tools }
    @tools_nearby = []
    keyword = params[:name].downcase
    p keyword
    @tools.each do |tool|
      if tool.type.name.downcase == params[:name].downcase
        @tools_nearby << tool
      end
      if tool.display_name.include?(keyword)
        @tools_nearby << tool
      end
      if tool.description.include?(keyword)
        @tools_nearby << tool
      end
      if tool.make.include?(keyword)
        @tools_nearby << tool
      end
    end
    p @tools_nearby
    @tools_nearby = @tools_nearby.uniq
  end

end

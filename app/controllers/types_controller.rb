class TypesController < ApplicationController

  def index
    @types = Type.all
  end

  def search
    nearby_users = current_user.nearby_users(15)
    @tools = nearby_users.flat_map { |user| user.tools }
    @tools_nearby = { p1: [], p2:[], p3: [], p4: [], p5: [] }
    keyword = params[:name].downcase
    @tools.each do |tool|
      if tool.display_name.downcase.include?(keyword)
        @tools_nearby[:p1] << tool
      elsif tool.type.name.downcase.include?(keyword)
        @tools_nearby[:p2] << tool
      elsif tool.make.downcase.include?(keyword)
        @tools_nearby[:p3] << tool
      elsif tool.tool_model.downcase.include?(keyword)
        @tools_nearby[:p4] << tool
      elsif tool.description.downcase.include?(keyword)
        @tools_nearby[:p5] << tool
      end
    end
    @tools_nearby = @tools_nearby.values.flatten
    return @tools_nearby
  end

end

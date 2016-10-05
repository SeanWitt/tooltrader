class AddDescriptionToTool < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :description, :string
  end
end

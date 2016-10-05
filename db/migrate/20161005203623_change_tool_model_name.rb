class ChangeToolModelName < ActiveRecord::Migration[5.0]
  def change
    rename_column :tools, :model, :tool_model
  end
end

class Tools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.string :display_name
      t.string :make
      t.string :model
      t.integer :type_id
      t.interger :user_id
      t.timestamps
    end
  end
end

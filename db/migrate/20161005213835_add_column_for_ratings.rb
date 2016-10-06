class AddColumnForRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :review
      t.integer :author_id
      t.integer :recipient_id
      t.integer :rating
      t.timestamps
    end
  end
end

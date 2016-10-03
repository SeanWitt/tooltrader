class Users < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :email
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps(null: false)
    end
  end
end

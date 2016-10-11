class AddLoanSystem < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :loaned, :boolean, default: false
    add_column :tools, :hidden, :boolean, default: false
  end
end

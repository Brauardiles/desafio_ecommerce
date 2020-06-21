class AddParentToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_id, :integer
    add_index :categories, :category_id
  end
end

class CreateCuppons < ActiveRecord::Migration[5.2]
  def change
    create_table :cuppons do |t|
      t.references :user, foreign_key: true
      t.string :kind
      t.boolean :discount_type, default: false
      t.float :amount
      t.integer :used_count, default: 0

      t.timestamps
    end
  end
end

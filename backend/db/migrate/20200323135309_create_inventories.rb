class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.integer :hero_id
      t.integer :item_id
      t.boolean :equipt?, default: false
      t.timestamps
    end
  end
end

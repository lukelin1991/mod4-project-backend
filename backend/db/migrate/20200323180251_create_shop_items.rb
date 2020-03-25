class CreateShopItems < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_items do |t|
      t.integer :shop_id
      t.integer :item_id

      t.timestamps
    end
  end
end

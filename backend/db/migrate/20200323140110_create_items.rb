class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :itemtype
      t.integer :damage
      t.integer :defense 
      t.string :image
      t.integer :value
      
      t.timestamps
    end
  end
end

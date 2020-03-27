class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :value
      t.integer :damage
      t.integer :defense
      t.integer :health
      t.integer :user_id

      t.timestamps
    end
  end
end

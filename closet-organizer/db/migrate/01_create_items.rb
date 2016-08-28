class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :category
      t.string :color
      t.string :fabric
      t.integer :outfit_id
      t.integer :brand_id
      t.integer :user_id

      t.timestamps
    end
  end
end

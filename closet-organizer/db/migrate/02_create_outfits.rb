class CreateOutfits < ActiveRecord::Migration[5.0]
  def change
    create_table :outfits do |t|
      t.string :name
      t.string :season
      t.integer :formality_level

      t.timestamps
    end
  end
end

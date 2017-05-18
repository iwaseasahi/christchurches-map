class CreatePrefectures < ActiveRecord::Migration[5.0]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.decimal :latitude, precision: 11, scale: 8
      t.decimal :longitude, precision: 11, scale: 8
      t.integer :zoom_level
      t.timestamps
      t.datetime :soft_destroyed_at
    end
  end
end

class CreateChurches < ActiveRecord::Migration[5.0]
  def change
    create_table :churches do |t|
      t.string :name
      t.string :group
      t.integer :group_id
      t.string :postal_code
      t.integer :prefecture_id
      t.string :address
      t.decimal :latitude, precision: 11, scale: 8
      t.decimal :longitude, precision: 11, scale: 8
      t.string :tel
      t.string :fax
      t.string :email
      t.string :url
      t.text :worshiping_time
      t.integer :language_id
      t.timestamps
      t.datetime :soft_destroyed_at
    end
  end
end

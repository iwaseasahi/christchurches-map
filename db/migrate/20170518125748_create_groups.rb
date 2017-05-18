class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.timestamps
      t.datetime :soft_destroyed_at
    end
  end
end

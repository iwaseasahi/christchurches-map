class RemoveSoftDestroyedAtFromPrefectures < ActiveRecord::Migration[5.0]
  def change
    remove_column :prefectures, :soft_destroyed_at, :datetime
  end
end

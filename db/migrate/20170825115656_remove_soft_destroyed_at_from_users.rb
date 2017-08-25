class RemoveSoftDestroyedAtFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :soft_destroyed_at, :datetime
  end
end

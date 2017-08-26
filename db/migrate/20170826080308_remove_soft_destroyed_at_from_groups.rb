class RemoveSoftDestroyedAtFromGroups < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :soft_destroyed_at, :datetime
  end
end

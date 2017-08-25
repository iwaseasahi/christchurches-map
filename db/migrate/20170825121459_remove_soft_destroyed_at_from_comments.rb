class RemoveSoftDestroyedAtFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :soft_destroyed_at, :datetime
  end
end

class RemoveSoftDestroyedAtFromChurches < ActiveRecord::Migration[6.0]
  def change
    remove_column :churches, :soft_destroyed_at
  end
end

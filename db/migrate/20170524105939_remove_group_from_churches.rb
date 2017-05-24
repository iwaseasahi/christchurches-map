class RemoveGroupFromChurches < ActiveRecord::Migration[5.0]
  def change
    remove_column :churches, :group, :string
  end
end

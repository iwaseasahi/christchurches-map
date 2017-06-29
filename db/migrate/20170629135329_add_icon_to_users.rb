class AddIconToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :icon, :string, after: :gender
  end
end

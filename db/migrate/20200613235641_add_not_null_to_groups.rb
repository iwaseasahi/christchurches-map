class AddNotNullToGroups < ActiveRecord::Migration[6.0]
  def change
    change_column_null :groups, :name, false
  end
end

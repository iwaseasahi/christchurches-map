class AddNotNullToChurches < ActiveRecord::Migration[6.0]
  def change
    change_column_null :churches, :name, false
    change_column_null :churches, :group_id, false
    change_column_null :churches, :prefecture_id, false
    change_column_null :churches, :address, false
  end
end

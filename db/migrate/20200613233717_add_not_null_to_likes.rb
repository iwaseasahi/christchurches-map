class AddNotNullToLikes < ActiveRecord::Migration[6.0]
  def change
    change_column_null :likes, :user_id, false
    change_column_null :likes, :church_id, false
  end
end

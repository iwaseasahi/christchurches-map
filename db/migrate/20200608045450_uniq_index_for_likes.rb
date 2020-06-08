class UniqIndexForLikes < ActiveRecord::Migration[6.0]
  def change
    add_index :likes, [:user_id, :church_id], unique: true
  end
end

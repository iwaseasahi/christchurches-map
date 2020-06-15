class RemoveColumnsFromUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users, bulk: true do |t|
      t.remove :church_id
      t.remove :gender
      t.remove :is_test
    end
  end
end

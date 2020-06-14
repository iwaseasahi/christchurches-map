class RemoveColumnsFromChurches < ActiveRecord::Migration[6.0]
  def change
    change_table :churches, bulk: true do |t|
      t.remove :postal_code
      t.remove :worshiping_time
    end
  end
end

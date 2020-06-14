class RemoveSortOfNumberFromPhotos < ActiveRecord::Migration[6.0]
  def change
    change_table :photos, bulk: true do |t|
      t.remove :sort_of_number
    end
  end
end

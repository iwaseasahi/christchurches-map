class AddNotNullToPrefectures < ActiveRecord::Migration[6.0]
  def change
    change_column_null :prefectures, :name, false
    change_column_null :prefectures, :latitude, false
    change_column_null :prefectures, :longitude, false
    change_column_null :prefectures, :zoom_level, false
  end
end

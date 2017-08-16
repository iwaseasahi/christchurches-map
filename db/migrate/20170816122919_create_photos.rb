class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.belongs_to :church,         null: false
      t.string     :file_name,      null: false
      t.integer    :sort_of_number, null: false
      t.timestamps
    end
  end
end

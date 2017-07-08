class AddTopImageToChurches < ActiveRecord::Migration[5.0]
  def change
    add_column :churches, :top_image, :string, after: :worshiping_time
  end
end

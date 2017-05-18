class RemoveLanguageIdFromChurches < ActiveRecord::Migration[5.0]
  def change
    remove_column :churches, :language_id, :integer
  end
end

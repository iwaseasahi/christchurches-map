class ChangeUrlToChurches < ActiveRecord::Migration[5.0]
  def change
    change_column(:churches, :url, :text)
  end
end

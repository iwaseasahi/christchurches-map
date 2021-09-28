class DeleteTelForUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :tel, :string
  end
end

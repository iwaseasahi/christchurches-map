class AddTelForUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tel, :string
  end
end

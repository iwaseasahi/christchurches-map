class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user,    null: false
      t.belongs_to :church,  null: false
      t.text       :comment, null: false
      t.datetime   :soft_destroyed_at
      t.timestamps
    end
  end
end

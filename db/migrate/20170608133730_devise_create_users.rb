class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      ***REMOVED******REMOVED*** Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ***REMOVED******REMOVED*** Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ***REMOVED******REMOVED*** Rememberable
      t.datetime :remember_created_at

      ***REMOVED******REMOVED*** Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ***REMOVED*** Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email ***REMOVED*** Only if using reconfirmable

      ***REMOVED******REMOVED*** Lockable
      ***REMOVED*** t.integer  :failed_attempts, default: 0, null: false ***REMOVED*** Only if lock strategy is :failed_attempts
      ***REMOVED*** t.string   :unlock_token ***REMOVED*** Only if unlock strategy is :email or :both
      ***REMOVED*** t.datetime :locked_at
      t.string :last_name
      t.string :first_name
      t.integer :church_id
      t.integer :gender
      t.boolean :is_test, default: false, null: false
      t.datetime :soft_destroyed_at

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    ***REMOVED*** add_index :users, :confirmation_token,   unique: true
    ***REMOVED*** add_index :users, :unlock_token,         unique: true
  end
end

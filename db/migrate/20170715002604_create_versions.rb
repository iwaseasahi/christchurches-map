***REMOVED*** This migration creates the `versions` table, the only schema PT requires.
***REMOVED*** All other migrations PT provides are optional.
class CreateVersions < ActiveRecord::Migration[5.0]

  ***REMOVED*** The largest text column available in all supported RDBMS is
  ***REMOVED*** 1024^3 - 1 bytes, roughly one gibibyte.  We specify a size
  ***REMOVED*** so that MySQL will use `longtext` instead of `text`.  Otherwise,
  ***REMOVED*** when serializing very large objects, `text` might not be big enough.
  TEXT_BYTES = 1_073_741_823

  def change
    create_table :versions, { options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci" } do |t|
      t.string   :item_type, {:null=>false, :limit=>191}
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES

      ***REMOVED*** Known issue in MySQL: fractional second precision
      ***REMOVED*** -------------------------------------------------
      ***REMOVED***
      ***REMOVED*** MySQL timestamp columns do not support fractional seconds unless
      ***REMOVED*** defined with "fractional seconds precision". MySQL users should manually
      ***REMOVED*** add fractional seconds precision to this migration, specifically, to
      ***REMOVED*** the `created_at` column.
      ***REMOVED*** (https://dev.mysql.com/doc/refman/5.6/en/fractional-seconds.html)
      ***REMOVED***
      ***REMOVED*** MySQL users should also upgrade to rails 4.2, which is the first
      ***REMOVED*** version of ActiveRecord with support for fractional seconds in MySQL.
      ***REMOVED*** (https://github.com/rails/rails/pull/14359)
      ***REMOVED***
      t.datetime :created_at
    end
    add_index :versions, %i(item_type item_id)
  end
end

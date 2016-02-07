class Dropshipping < ActiveRecord::Migration
  def up
    drop_table :shipping
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

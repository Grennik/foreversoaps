class Revertshippings < ActiveRecord::Migration
  def up
    drop_table :shippings
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

class Addshippingtostates < ActiveRecord::Migration
  def change
    add_column :states, :shipping_id, :integer
  end
end

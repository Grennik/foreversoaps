class Fixshipping3 < ActiveRecord::Migration
  def change
    remove_column :shippings, :state_id, :integer
    add_column :shippings, :state, :string
  end
end

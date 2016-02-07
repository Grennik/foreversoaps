class Fixshipping2 < ActiveRecord::Migration
  def change
    remove_column :shippings, :state, :string
    add_column :shippings, :state_id, :integer
  end
end

class Fixshipping < ActiveRecord::Migration
  def change
    remove_column :shippings, :state, :integer
    add_column :shippings, :state, :string
  end
end

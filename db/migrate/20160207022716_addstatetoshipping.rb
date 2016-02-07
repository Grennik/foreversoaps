class Addstatetoshipping < ActiveRecord::Migration
  def change
    remove_column :shippings, :state, :string
    add_column :shippings, :state, :integer
  end
end

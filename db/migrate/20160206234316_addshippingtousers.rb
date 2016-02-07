class Addshippingtousers < ActiveRecord::Migration
  def change
    add_column :users, :shippings, :integer
    add_column :shippings, :user_id, :integer
  end
end

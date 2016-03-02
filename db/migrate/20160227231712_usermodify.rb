class Usermodify < ActiveRecord::Migration
  def change
    add_column :users, :transactions, :integer
    add_column :transactions, :user_id, :integer
  end
end

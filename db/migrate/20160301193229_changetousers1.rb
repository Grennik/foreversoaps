class Changetousers1 < ActiveRecord::Migration
  def change
    remove_column :users, :transaction_id, :integer
    add_column :users, :transactions, :integer
  end
end

class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|

      t.timestamps null: false
      t.datetime :time
      t.string :pending
      t.integer :items
      t.integer :user_id
      t.decimal :total_price
    end
  end
end

class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :shipping
      t.decimal :total
      t.references :orderstatus, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

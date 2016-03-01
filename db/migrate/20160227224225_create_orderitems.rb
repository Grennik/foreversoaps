class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.references :item, index: true, foreign_key: true
      t.references :transaction, index: true, foreign_key: true
      t.decimal :price
      t.integer :quantity
      t.decimal :total_price

      t.timestamps null: false
    end
  end
end

class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      
      t.timestamps null: false
      t.string :name
      t.integer :item_ID
      t.string :description
      t.integer :price
      t.integer :discount_price
      t.integer :stock
      t.string :in_stock
      t.string :sub_category
      t.string :image
      t.belongs_to :category, index: true
    end
  end
end

class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|

      t.timestamps null: false
      t.string :name
      t.decimal :shipping_price
    end
  end
end

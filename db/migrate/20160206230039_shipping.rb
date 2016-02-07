class Shipping < ActiveRecord::Migration
  def change
    create_table :shipping do |t|

      t.timestamps null: false
      t.string :name
      t.string :street_address
      t.string :apartment
      t.string :state
      t.integer :zipcode
    
    end
  end
end

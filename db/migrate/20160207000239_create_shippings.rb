class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|

      t.timestamps null: false
      t.string :name
      t.string :street_address
      t.string :apartment
      t.string :state
      t.integer :zipcode
      t.integer :user_id
    end
  end
end

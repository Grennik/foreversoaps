class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|

      t.timestamps null: false
      t.string :name
      t.string :description
      t.integer :items

    end
  end
end

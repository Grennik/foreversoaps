class Modifyorderitems < ActiveRecord::Migration
  def change
    add_column :orderitems, :image, :string
    add_column :orderitems, :description, :string
    add_column :orderitems, :name, :string
  end
end

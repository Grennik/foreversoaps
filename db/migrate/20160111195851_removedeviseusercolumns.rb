class Removedeviseusercolumns < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    remove_column :users, :streetaddress, :string
    remove_column :users, :stateaddress, :string
    remove_column :users, :apartmentaddress, :string
    remove_column :users, :zipcode, :integer
    remove_column :users, :phone, :string
    remove_column :users, :date_of_birth, :datetime
  end
end

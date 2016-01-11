class AddMoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :streetaddress, :string
    add_column :users, :stateaddress, :string
    add_column :users, :apartmentaddress, :string
    add_column :users, :zipcode, :integer
    add_column :users, :phone, :string
    add_column :users, :date_of_birth, :datetime
  end
end

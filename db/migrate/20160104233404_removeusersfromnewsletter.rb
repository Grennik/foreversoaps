class Removeusersfromnewsletter < ActiveRecord::Migration
  def change
    remove_column :newsletters, :email, :string
  end
end

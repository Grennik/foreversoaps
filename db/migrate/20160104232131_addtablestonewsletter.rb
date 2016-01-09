class Addtablestonewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :article_title, :string
    add_column :newsletters, :article, :text
  end
end

class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|

      t.timestamps null: false
      t.string :email
    end
  end
end

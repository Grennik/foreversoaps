class CreateNewsmailers < ActiveRecord::Migration
  def change
    create_table :newsmailers do |t|

      t.timestamps null: false
      t.string :email
    end
  end
end

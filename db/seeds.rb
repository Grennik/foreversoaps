# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = Admin.new
admin.email = 'joey.ciervo@gmail.com'
admin.password = 'password123'
admin.password_confirmation = 'password123'
admin.save!

category = Category.new
category.name = 'Soap'
category.cat_ID = '1'

category = Category.new
category.name = 'Oils'
category.cat_ID = '2'

category = Category.new
category.name = 'Insense'
category.cat_ID = '3'

category = Category.new
category.name = 'Cones'
category.cat_ID = '4'

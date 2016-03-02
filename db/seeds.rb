# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# admin = Admin.new
# admin.email = 'joey.ciervo@gmail.com'
# admin.password = 'password123'
# admin.password_confirmation = 'password123'
# admin.save!



Orderstatus.create! id: 1, name: "In Progress"
Orderstatus.create! id: 2, name: "Placed"
Orderstatus.create! id: 3, name: "Shipped"
Orderstatus.create! id: 4, name: "Cancelled"

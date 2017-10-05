# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create! :email => 'henrykoleosoo@hotmail.co.uk', :password => 'henry2cool'

l1 = List.create!(title: "Pick Up Kids from School", body: "Also make sure to pick up some dinner on the way lorem", user_id: u1.id)
l2 = List.create!(title: "s;kfnasdkbf;aksdbjf", body: "lsfaldshafh;sdakfhjsakdjfhaskdhfsa;kdfjsbdfjsad", user_id: u1.id)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Account.destroy_all


user = User.create({:email => "guy@gmail.com", :password => "111111", :password_confirmation => "111111" })


transportation = Account.create(name:"Transportation", user_id: user.id)
groceries = Account.create(name:"Groceries", user_id: user.id)
bills = Account.create(name:"Bills", user_id: user.id)
entertainment = Account.create(name:"Entertainment", user_id: user.id)
dining_out = Account.create(name:"Dining Out", user_id: user.id)
shopping = Account.create(name:"Shopping", user_id: user.id)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name: 'loggedin')
Role.create(name: 'owner')
Role.create(name: 'admin')

user1 = User.new(:firstname => "Brandon", :lastname => "Robertson", :email => "br1@google.com", :password => "password", :password_confirmation => "password")
user1.roles << Role.find_by(name: 'loggedin') 
user1.save!

user2 = User.new(:firstname => "Zeb", :lastname => "Stevenson", :email => "zs1@google.com", :password => "password", :password_confirmation => "password")
user2.roles << Role.find_by(name: 'loggedin') 
user2.save!

user3 = User.new(:firstname => "Carl", :lastname => "Davidson", :email => "cd1@google.com", :password => "password", :password_confirmation => "password")
user3.roles << Role.find_by(name: 'loggedin') 
user3.save!

user4 = User.new(:firstname => "Steve", :lastname => "Apple", :email => "aw1@google.com", :password => "password", :password_confirmation => "password")
user4.roles << Role.find_by(name: 'loggedin') 
user4.save!

user5 = User.new(:firstname => "Elon", :lastname => "Tesla", :email => "js1@google.com", :password => "password", :password_confirmation => "password")
user5.roles << Role.find_by(name: 'loggedin') 
user5.save!

user6 = User.new(:firstname => "Bill", :lastname => "Microsoft", :email => "se1@google.com", :password => "password", :password_confirmation => "password")
user6.roles << Role.find_by(name: 'loggedin') 
user6.save!

store1 = Store.new(:name => "Brandons Store", :email => "brandonsstore@cheese.com", :contact_number => "123123123", :user_id => 1)
store1.save!
user1.roles << Role.find_by(name: 'owner')
user1.save!

store2 = Store.new(:name => "Zebs Store", :email => "zebsstore@cheese.com", :contact_number => "123123123", :user_id => 2)
store2.save!
user2.roles << Role.find_by(name: 'owner')
user2.save!

store3 = Store.new(:name => "Carls Store", :email => "carlsstore@cheese.com", :contact_number => "123123123", :user_id => 3)
store3.save!
user3.roles << Role.find_by(name: 'owner')
user3.save!

store4 = Store.new(:name => "Steves Store", :email => "stevesstore@cheese.com", :contact_number => "123123123", :user_id => 4)
store4.save!
user4.roles << Role.find_by(name: 'owner')
user4.save!

store5 = Store.new(:name => "Elons Store", :email => "elonsstore@cheese.com", :contact_number => "123123123", :user_id => 5)
store5.save!
user5.roles << Role.find_by(name: 'owner')
user5.save!

store6 = Store.new(:name => "Bills Store", :email => "billsstore@cheese.com", :contact_number => "123123123", :user_id => 6)
store6.save!
user6.roles << Role.find_by(name: 'owner')
user6.save!

cheese1 = Cheese.new()
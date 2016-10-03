# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@type1 = Type.create(name: "Hammer")
@type2 = Type.create(name: "Saw")
@type3 = Type.create(name: "Power Washer")

@user1 = User.create(name: "Sean Witt", password: "password", email: "sean@sean.com", address: "1783 Ohlen Rd, Austin TX 78757")
@user2 = User.create(name: "Tom Ho", password: "password", email: "tom@tom.com", address: "1705 Guadalupe, Austin TX 78717")

@hammer = Tool.create(display_name: "Hammer", make: "acme", model: "The anihilator", type_id: 1, user_id: 1 )
@saw = Tool.create(display_name: "Saw", make: "acme", model: "Turbo Saw 3000", type_id: 2, user_id: 1 )
@power_washer = Tool.create(display_name: "Power Washer", make: "acme", model: "x4753 hybrid flex", type_id: 3, user_id: 2 )


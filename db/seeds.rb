# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@type1 = Type.create(name: "Power Tools")
@type2 = Type.create(name: "Lawn Care Tools")
@type3 = Type.create(name: "Automotive")
@type4 = Type.create(name: "Demolition")
@type5 = Type.create(name: "Heavy Machinery")
@type6 = Type.create(name: "Cleaning Tools")
@type7 = Type.create(name: "Electrical")
@type8 = Type.create(name: "Household Tools")
@type9 = Type.create(name: "Misc Parts")

@user1 = User.create(name: "Sean Witt", password: "password", email: "sean@sean.com", address: "1783 Ohlen Rd, Austin TX 78757")
@user2 = User.create(name: "Tom Ho", password: "password", email: "tom@tom.com", address: "1705 Guadalupe, Austin TX 78717")

@hammer = Tool.create(display_name: "Hammer", make: "acme", tool_model: "The anihilator", type_id: 1, user_id: 1, description: "Just about the best hammer out there. It's got a few dents but it'll hit any nail on the head" )
@saw = Tool.create(display_name: "Saw", make: "acme", tool_model: "Turbo Saw 3000", type_id: 2, user_id: 1, description: "It will cut just about anything in half" )
@power_washer = Tool.create(display_name: "Power Washer", make: "acme", tool_model: "x4753 hybrid flex", type_id: 3, user_id: 2, description: "It honestly doesnt work that well which is why I'm willing to lend it" )



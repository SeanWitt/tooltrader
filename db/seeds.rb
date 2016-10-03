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

@hammer = Tool.create(display_name: "Hammer", model: "swinger", type: 1, user_id: 1 )
@saw = Tool.create(display_name: "Saw", model: "Acme", type: 2, user_id: 1 )
@power_washer = Tool.create(display_name: "Power Washer", model: "swinger", type: 3, user_id: 1 )


    # t.string :display_name
    #   t.string :make
    #   t.string :model
    #   t.string :type
    #   t.interger :user_id

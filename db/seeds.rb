# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Customer.destroy_all

Customer.create!([{
    name: 'waleed',
    email: 'waleed@mail.com',
    phone: 2345666
},
{
    name: 'hassan',
    email: 'hassan@mail.com',
    phone: 2345566
},
{
    name: 'zain',
    email: 'zain@mail.com',
    phone: 2388888
},
{
    name: 'awais',
    email: 'awais@mail.com',
    phone: 9999838
}
])
p "Created #{Customer.count} customers"
Employee.destroy_all

Customer.create!([{
    name:'aftab Wahla',
    email:'aftabwahla@mail.com',
    phone:23764545,
    },
{
    name:'asghar',
    email:'asghar@mail.com',
    phone:123456,
    },
{
    name:'taqweem',
    email:'taqweem@mail.com',
    phone:98239437,
    },
{
    name:'zeeshan',
    email:'zeeshan@mail.com',
    phone:234342344,
    },
{
    name:'dilawar',
    email:'dilawar@mail.com',
    phone:2343545,
    },
{
    name:'nizam',
    email:'nizam@mail.com',
    phone:23121223,
    },
{
    name:'nazim',
    email:'nazim@mail.com',
    phone:5656465,
    },
{
    name:'abid',
    email:'abid@mail.com',
    phone:234342432,
    },
{
    name:'azam',
    email:'azam@mail.com',
    phone:92384839,
    },
{
    name:'amanat',
    email:'amanat@mail.com',
    phone:23687878,
    },
{
    name:'adeel ali',
    email:'adeelali@mail.com',
    phone:234343545,
    },
{
    name:'adnan nasir',
    email:'adnannasir@mail.com',
    phone:2343545,
    },
{
    name:'adnan bashir',
    email:'adnanbashir@mail.com',
    phone:29999977,
    },
])


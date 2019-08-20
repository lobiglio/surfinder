# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB"
School.destroy_all
User.destroy_all

puts "Creating users..."

renter = User.create!(
  name: Faker::Name.unique.name,
  email: 'renter@example.com',
  address: Faker::Address.full_address,
  password: 'password',
  )

owner = User.create!(
  name: Faker::Name.unique.name,
  email: 'owner@example.com',
  address: Faker::Address.full_address,
  password: 'password',
)


puts "Creating school"
3.times do
  School.create!(
    name: Faker::Name.unique.name,
    address: "Hossegor, France",
    description: '"Cours de surf en collectif, privé ou pour enfants, Stages de surf en intensif"',
    email: 'school@example.com',
    password: 'password',
    phone_number: Faker::PhoneNumber.phone_number,
    language:"French",
    level: "Intermediate",
    main_photo:File.open(Rails.root.join('app/assets/images/logo.png')),
  )
end


Pack.create!(
    price: 130,
    description: "Un jour de lesson",
    max_persons: 5
)

Pack.create!(
    price: 150,
    description: "Cours intensif",
    max_persons: 5
)




puts "Done"

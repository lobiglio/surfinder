# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning DB"
Pack.destroy_all
School.destroy_all
User.destroy_all

puts "Creating users..."

renter = User.create!(
  name: Faker::Name.unique.name,
  email: 'renter@example.com',
  address: Faker::Address.full_address,
  password: 'password',

  )

owner1 = User.create!(
  name: Faker::Name.unique.name,
  email: 'owner1@example.com',
  address: Faker::Address.full_address,
  password: 'password',


)

owner2 = User.create!(
  name: Faker::Name.unique.name,
  email: 'owner2@example.com',
  address: Faker::Address.full_address,
  password: 'password',

)

owner3 = User.create!(
  name: Faker::Name.unique.name,
  email: 'owner3@example.com',
  address: Faker::Address.full_address,
  password: 'password',
)


puts "Creating school"

school1 = School.create!(
  name: Faker::Name.unique.name,
  address: "Hossegor, France",
  description: '"Cours de surf en collectif, privé ou pour enfants, Stages de surf en intensif"',
  email: 'school1@example.com',
  phone_number: Faker::PhoneNumber.phone_number,
  language:"French",
  level: "Intermediate",
  user: owner1,
  main_photo:File.open(Rails.root.join('app/assets/images/logo.png')),
)

school2 = School.create!(
  name: Faker::Name.unique.name,
  address: "Hossegor, France",
  description: '"Cours de surf en collectif, privé ou pour enfants, Stages de surf en intensif"',
  email: 'school2@example.com',
  phone_number: Faker::PhoneNumber.phone_number,
  language:"French",
  level: "Intermediate",
  user: owner2,
  main_photo:File.open(Rails.root.join('app/assets/images/logo.png')),
)

school3 = School.create!(
  name: Faker::Name.unique.name,
  address: "Hossegor, France",
  description: '"Cours de surf en collectif, privé ou pour enfants, Stages de surf en intensif"',
  email: 'school3@example.com',
  phone_number: Faker::PhoneNumber.phone_number,
  language:"French",
  level: "Intermediate",
  user: owner3,
  main_photo:File.open(Rails.root.join('app/assets/images/logo.png')),
)


Pack.create!(
    price: 130,
    description: "Un jour de lesson",
    max_persons: 5,
    school: school1

)

Pack.create!(
    price: 150,
    description: "Cours intensif",
    max_persons: 5,
    school: school2
)

Pack.create!(
    price: 150,
    description: "Cours intensif",
    max_persons: 5,
    school: school3
)


puts "Done"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Example User",
             username: "123example123",
             email: "example@mail.com",
             password:              "123456",
             password_confirmation: "123456")

99.times do |n|
  name  = Faker::Name.name
  username = "example#{n+1}"
  email = "example-#{n+1}@mail.com"
  password = "password"
  User.create!(name:  name,
               username: username,
               email: email,
               password:              password,
               password_confirmation: password)
end

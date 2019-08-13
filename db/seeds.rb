# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting seed"

Superpower.destroy_all
User.destroy_all
puts "destroying old seeds ha ha ha"

user = User.create!(email: "xinyi@gmail.com", password: "password")

Superpower.create!(
  name: "Fly",
  description: "Fly me to the sky",
  user: user
  )

Superpower.create!(
  name: "Throwing ball of fire",
  description: "Fire is hot baby",
  user: user
  )

Superpower.create!(
  name: "Ice",
  description: "Cold as your grandma",
  user: user
  )

Superpower.create!(
  name: "Invisibility",
  description: "Go everywhere without being found out",
  user: user
  )

Superpower.create!(
  name: "Superstrenght",
  description: "Carry your car home!",
  user: user
  )

Superpower.create!(
  name: "Speak to animals",
  description: "Speak with your best buddy!",
  user: user
  )

Superpower.create!(
  name: "Teleporting",
  description: "Going to school in 1 second is tight!",
  user: user
  )


puts "Done"


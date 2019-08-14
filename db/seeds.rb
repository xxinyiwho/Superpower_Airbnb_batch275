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
  description: "Fly me to the moon",
  user: user,
  remote_photo_url: "https://i1.wp.com/metro.co.uk/wp-content/uploads/2014/10/skydive-exit-dive.jpg?quality=90&strip=all&zoom=1&resize=644%2C428&ssl=1"
  )

Superpower.create!(
  name: "Throwing ball of fire",
  description: "Fire is hot baby",
  user: user,
  remote_photo_url: "https://images.unsplash.com/photo-1552530322-835f6dedcca2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
  )

Superpower.create!(
  name: "Ice",
  description: "Cold as your grandma",
  user: user,
  remote_photo_url: "https://images.unsplash.com/photo-1461805491071-c9592143d69c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80"
  )

Superpower.create!(
  name: "Invisibility",
  description: "Go everywhere without being found out",
  user: user,
  remote_photo_url: "https://www.praguepost.com/wp-content/uploads/2017/02/invisibility-cloak.jpeg"
  )

Superpower.create!(
  name: "Superstrenght",
  description: "Carry your car home!",
  user: user,
  remote_photo_url: "https://images.unsplash.com/photo-1471286174890-9c112ffca5b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
  )

Superpower.create!(
  name: "Speak to animals",
  description: "Speak with your best buddy!",
  user: user,
  remote_photo_url: "https://images.unsplash.com/photo-1561312176-5aedf7172115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80"
  )

Superpower.create!(
  name: "Teleporting",
  description: "Going to school in 1 second is tight!",
  user: user,
  remote_photo_url: "https://unity3d.college/wp-content/uploads/2017/05/SteamVR-Teleportation-Featured.jpg"
  )


puts "Done"


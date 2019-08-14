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
  user: user,
  remote_photo_url: "https://thumbs.dreamstime.com/z/superhero-flying-superman-vector-illustration-isolated-background-34647944.jpg"
  )

Superpower.create!(
  name: "Throwing ball of fire",
  description: "Fire is hot baby",
  user: user,
  remote_photo_url: "https://imagevars.gulfnews.com/2018/11/21/181121_generic_fire_resources1_16a08520cf4_large.jpg"
  )

Superpower.create!(
  name: "Ice",
  description: "Cold as your grandma",
  user: user,
  remote_photo_url: "https://p2d7x8x2.stackpathcdn.com/wordpress/wp-content/uploads/2019/02/Iceberg-istock-640x446.jpg"
  )

Superpower.create!(
  name: "Invisibility",
  description: "Go everywhere without being found out",
  user: user,
  remote_photo_url: "https://cosmos-production-assets.s3.amazonaws.com/file/spina/photo/2496/191015_invisibility_P.jpg"
  )

Superpower.create!(
  name: "Superstrenght",
  description: "Carry your car home!",
  user: user,
  remote_photo_url: "https://www.funkidslive.com/wp-content/uploads/2016/04/Hulk.jpg"
  )

Superpower.create!(
  name: "Speak to animals",
  description: "Speak with your best buddy!",
  user: user,
  remote_photo_url: "https://images-na.ssl-images-amazon.com/images/I/6164ose4TgL._SX425_.jpg"
  )

Superpower.create!(
  name: "Teleporting",
  description: "Going to school in 1 second is tight!",
  user: user,
  remote_photo_url: "https://unity3d.college/wp-content/uploads/2017/05/SteamVR-Teleportation-Featured.jpg"
  )


puts "Done"


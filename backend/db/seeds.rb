# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all
Planet.destroy_all

planets = Planet.create([
  {name: "Earth", image_url: "https://pngimg.com/uploads/earth/earth_PNG8.png"},
  {name: "Mars", image_url: "https://pngimg.com/uploads/mars_planet/mars_planet_PNG23.png"},
  {name: "Venus", image_url: "https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_1920,f_auto/AW_Venus_nli6oy.jpg"},
])

planets[0].people.create(name: "Tara")
planets[0].people.create(name: "Phong")
planets[1].people.create(name: "Jamon")
planets[1].people.create(name: "Marnie")
planets[1].people.create(name: "Louis")
planets[2].people.create(name: "Kyle")
planets[2].people.create(name: "Blake")
planets[2].people.create(name: "Chris")
planets[2].people.create(name: "Mell")


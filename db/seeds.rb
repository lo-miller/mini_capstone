# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "tent", price: 120, image_url: "tent@rei.com", description: "2 person backpacking tent")

Product.create(name: "boots", price: 85, image_url: "boots@rei.com", description: "brown hiking boots")

Product.create(name: "hiking poles", price: 90, image_url: "poles@rei.com", description: "pair of black collapsible hiking poles")

Product.create(name: "pack", price: 180, image_url: "pack@rei.com", description: "50L blue backpack with rainshield")

Product.create(name: "hammock", price: 45, image_url: "hammock@rei.com", description: "hammock with straps, red")
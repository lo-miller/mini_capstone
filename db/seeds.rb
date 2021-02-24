# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "tent", price: 120, image_url: "https://www.rei.com/media/product/169454", description: "2 person backpacking tent")

Product.create(name: "boots", price: 185, image_url: "https://www.rei.com/media/product/796065", description: "brown hiking boots")

Product.create(name: "hiking poles", price: 80, image_url: "https://www.rei.com/media/product/162591", description: "pair of black collapsible hiking poles")

Product.create(name: "pack", price: 180, image_url: "https://www.rei.com/media/product/1267170004", description: "50L blue backpack with rainshield")

Product.create(name: "hammock", price: 45, image_url: "https://www.rei.com/media/9e8b2dcb-08e1-4987-8b2f-857cdba9afd5?size=784x588", description: "hammock with straps, red")
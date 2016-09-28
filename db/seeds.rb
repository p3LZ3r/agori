# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'Grain', type: 'Grain', hierarchy: 1)
Product.create(name: 'Wheat', type: 'Wheat', hierarchy: 2)
Product.create(name: 'Barley', type: 'Barley', hierarchy: 2)
Product.create(name: 'Rye', type: 'Rye', hierarchy: 2)
Product.create(name: 'Fodderwheat', type: 'FodderWheat', hierarchy: 3)
Product.create(name: 'Breadwheat', type: 'BreadWheat', hierarchy: 3)
Product.create(name: 'Fodderrye', type: 'FodderRye', hierarchy: 3)
Product.create(name: 'Breadrye', type: 'BreadRye', hierarchy: 3)
Product.create(name: 'Fodderbarley', type: 'FodderBarley', hierarchy: 3)
Product.create(name: 'Maltingbarley', type: 'MaltingBarley', hierarchy: 3)

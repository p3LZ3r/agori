# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Grain.create(name: 'Grain', type: 'Grain', hierarchy: 1)
Grain.create(name: 'Wheat', type: 'Wheat', hierarchy: 2)
Grain.create(name: 'Barley', type: 'Barley', hierarchy: 2)
Grain.create(name: 'Rye', type: 'Rye', hierarchy: 2)
Grain.create(name: 'Fodderwheat', type: 'FodderWheat', hierarchy: 3)
Grain.create(name: 'Breadwheat', type: 'BreadWheat', hierarchy: 3)
Grain.create(name: 'Fodderrye', type: 'FodderRye', hierarchy: 3)
Grain.create(name: 'Breadrye', type: 'BreadRye', hierarchy: 3)
Grain.create(name: 'Fodderbarley', type: 'FodderBarley', hierarchy: 3)
Grain.create(name: 'Maltingbarley', type: 'MaltingBarley', hierarchy: 3)

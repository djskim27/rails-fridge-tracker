# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FridgeFood.destroy_all
FridgeDrink.destroy_all
Fridge.destroy_all 
Food.destroy_all
Drink.destroy_all



samsung = Fridge.create(location: 'Atlanta', brand: 'Samsung', size: 50, food: false, drink: false)
apple = Food.create(name: 'apple', weight: 1, vegan: true)
meatloaf = Food.create(name: 'meatloaf', weight: 1, vegan: false)
orange = Food.create(name: 'orange', weight: 1, vegan: true)

samsung.foods = [
    apple, 
    meatloaf, 
    orange 
]


sprite = Drink.create(name: 'Sprite', size: 8, alcoholic: false )
samsung.drinks = [
    sprite
]

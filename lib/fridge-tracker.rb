require_relative '../config/environment'
require_relative '../app/models/fridge'
require_relative '../app/models/food'

puts "Enter an option:"
puts "A) List all Fridges"
puts "B) Add New Fridge"
puts "C) Delete A Fridge"
puts "D) View Food In A Fridge"
puts "E) Add Food Item To Fridge"
puts "F) Eat A Food From A Fridge"

option = gets.chomp
puts "You selected #{option}"

if option.upcase == 'A'
  Fridge.all.map{|fridge| puts fridge.brand}
end

if option.upcase == 'B'
  puts "location?"
  location = gets.chomp
  puts "brand?"
  brand = gets.chomp
  puts "size?"
  size = gets.chomp

  Fridge.create(location: "#{location}", brand: "#{brand}", size: size.to_i, food: false, drink: false)
end

if option.upcase == 'C'
  Fridge.all.map{|fridge| puts fridge.brand}
  puts "Which brand of fridge do you want to delete?"
  brand = gets.chomp
  Fridge.find_by(brand: "#{brand}").destroy
end

if option.upcase == 'D'
  Fridge.all.map{|fridge| puts fridge.brand}
  puts "Which brand of fridge do you want to view the food in?"
  brand = gets.chomp
  Fridge.find_by(brand: "#{brand}").foods.map {|food| puts food.name}
end

if option.upcase == 'E'
  Fridge.all.map{|fridge| puts fridge.brand}
  puts "Which brand of fridge do you want to add food in?"
  brand = gets.chomp
  puts "What do you want to add?"
  name = gets.chomp
  puts "How much does it weigh?"
  weight = gets.chomp
  puts "Is it vegan? [yes/no]"
  vegan = gets.chomp
  Fridge.find_by(brand: "#{brand}").foods.push(Food.create(name: "#{name}", weight:"#{weight}", vegan:false))
end

if option.upcase == 'F'
  Fridge.all.map{|fridge| puts fridge.brand}
  puts "Which brand of fridge?"
  brand = gets.chomp
  Fridge.find_by(brand: "#{brand}").foods.map {|food| puts food.name}
  puts "Which food do you want to eat?"
  name = gets.chomp
  Food.find_by(name:"#{name}").destroy
end


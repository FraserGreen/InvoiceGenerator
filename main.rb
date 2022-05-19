Dir["lib/*.rb"].each {|file| require "./#{file}"}
# variant of the knapsack problem

# weight = qty
# value = qty/price

puts "hello"
food = FoodOrder.new(10)
watermelons = WatermelonOrder.new(11)
puts food.qty
puts watermelons.qty


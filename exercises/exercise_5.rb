require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.all.sum(:annual_revenue)
puts "Total company annual revenue: #{total_revenue}"

average_revenue = total_revenue / Store.count
puts "Average store annual revenue: #{average_revenue}"

over_million = Store.where("annual_revenue > 1000000").count
puts "Number of stores with revenue over $1 million: #{over_million}"
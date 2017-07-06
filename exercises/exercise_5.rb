require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# output the total revenue for all stores
@total_revenue = Store.sum(:annual_revenue)
puts "Total Annual Revenue is #{@total_revenue}"

#output the average annual revenue for all stores
@average = Store.average(:annual_revenue)
puts "Average Annual Revenue is #{@average}"

# output the number of stores with over $1M in annual revenue
@total_high_revenue = Store.where('stores.annual_revenue >= ?', 1000000).count
puts "Number of stores with over 1M in annual revenue is #{@total_high_revenue}"

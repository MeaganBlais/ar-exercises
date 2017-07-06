require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)

# find stores that sell men's apparel
puts "Mens Apparel"
puts "----------"
@mens_stores = Store.where(mens_apparel: true)

#loop through stores and output name & revenue
puts "add revenue"
puts "----------"
@mens_stores.each do |store|
  puts "#{store.name} reports annual revenue #{store.annual_revenue}"
end

# fetch stores selling women's clothing && revenue less than $1M
puts "womens apparel"
puts "----------"
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?',1000000)
@womens_stores.each do |store|
  puts "#{store.name} reports annual revenue #{store.annual_revenue}"
end

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true, created_at: Time.now.getutc, updated_at: Time.now.getutc)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false, created_at: Time.now.getutc, updated_at: Time.now.getutc)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true, created_at: Time.now.getutc, updated_at: Time.now.getutc)

@mens_stores = Store.where(mens_apparel: true)

puts
puts "Store name and revenue that sell men's apparels:"
@mens_stores.each do |store|
  puts "#{store.name} #{store.annual_revenue}"
end

@women_low_revenue_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000);

puts
puts "Store name and revenue that sell women's apparels with revenue less than 1000000:"
@women_low_revenue_stores.each do |store|
    puts "#{store.name} #{store.annual_revenue}"
end
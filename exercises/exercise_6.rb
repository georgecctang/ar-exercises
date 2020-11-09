require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

### create in exercise 8
# @store1.employees.create(first_name: 'Jon', last_name: "Smith", hourly_rate: 60)
# @store2.employees.create(first_name: "Paul", last_name: "Wong", hourly_rate: 70)
# @store2.employees.create(first_name: "Amy", last_name: "Adams", hourly_rate: 80)
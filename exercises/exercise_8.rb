require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

class Employee < ActiveRecord::Base
  before_create :create_password

  private
    def create_password
      self.password = ('a'..'z').to_a.shuffle[0,8].join
    end
end


@store1.employees.create(first_name: 'Jon', last_name: "Smith", hourly_rate: 60)
@store2.employees.create(first_name: "Paul", last_name: "Wong", hourly_rate: 70)
@store2.employees.create(first_name: "Amy", last_name: "Adams", hourly_rate: 80)

puts @store1.employees.count
require 'pry'
require './lib/dog.rb'
class Day_Care
  attr_reader :customers, :charge

  def initialize(day_care_name)
    @day_care_name = day_care_name
    @customers = []
    @charge ={}
  end
  def add_customer(customer)
    @customers << customer
  end

  def list_dogs
    doggies = @customers.map do |person|
      person.dogs
    end
    list = doggies.map do |dog|
      dog.map do |doggo|
        doggo.name
      end
      end
      list.flatten.join(", ")
  end

  def unfed_dogs
    un_fed_dog = @customers.map do |person|
      person.dogs.map do |dog|
        dog if dog.fed? == false
        end
      end
      un_fed_dog.flatten.compact
  end

  def charge_customer
    customer = @customers.map do |person|
      person.dogs.map do |dog|
        person if dog.fed? == true
        end
      end
    customer_to_charge = customer.flatten.compact
    @charge[customer_to_charge] = 5
    @charge
  end
end

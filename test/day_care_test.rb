require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'
require './lib/customer'
require './lib/day_care'


class DayCareTest < Minitest::Test


def test_customers_can_be_added_to_day_care
  day_care = Day_Care.new("The Dog Spot")
  customer_1 = Customer.new("Alice", "Jones", "2")
  customer_2 = Customer.new("Tracy", "Nguyen", "5")
  day_care.add_customer(customer_1)
  day_care.add_customer(customer_2)

  assert_equal [customer_1,customer_2], day_care.customers
end

def test_dogs_can_be_added_to_day_care
  day_care = Day_Care.new("The Dog Spot")
  customer_1 = Customer.new("Alice", "Jones", "2")
  customer_2 = Customer.new("Tracy", "Nguyen", "5")
  day_care.add_customer(customer_1)
  day_care.add_customer(customer_2)
  doggie_1 = Dog.new("Comet", "German Shepherd")
  doggie_2 = Dog.new("Lassie", "Collie")
  doggie_3 = Dog.new("Martha", "Bernese Mountain Dog")
  customer_1.add_dog(doggie_1)
  customer_2.add_dog(doggie_2)
  customer_2.add_dog(doggie_3)

  assert_equal "Comet, Lassie, Martha", day_care.list_dogs
end

def test_dogs_can_check_fed_status
  day_care = Day_Care.new("The Dog Spot")
  customer_1 = Customer.new("Alice", "Jones", "2")
  customer_2 = Customer.new("Tracy", "Nguyen", "5")
  day_care.add_customer(customer_1)
  day_care.add_customer(customer_2)
  doggie_1 = Dog.new("Comet", "German Shepherd")
  doggie_2 = Dog.new("Lassie", "Collie")
  doggie_3 = Dog.new("Martha", "Bernese Mountain Dog")
  customer_1.add_dog(doggie_1)
  customer_2.add_dog(doggie_2)
  customer_2.add_dog(doggie_3)

  assert_equal [doggie_1, doggie_2, doggie_3], day_care.unfed_dogs
end

def test_dogs_can_check_fed_status_and_be_fed
  day_care = Day_Care.new("The Dog Spot")
  customer_1 = Customer.new("Alice", "Jones", "2")
  customer_2 = Customer.new("Tracy", "Nguyen", "5")
  day_care.add_customer(customer_1)
  day_care.add_customer(customer_2)
  doggie_1 = Dog.new("Comet", "German Shepherd")
  doggie_2 = Dog.new("Lassie", "Collie")
  doggie_3 = Dog.new("Martha", "Bernese Mountain Dog")
  customer_1.add_dog(doggie_1)
  customer_2.add_dog(doggie_2)
  customer_2.add_dog(doggie_3)
  doggie_1.feed

  assert_equal [doggie_2, doggie_3], day_care.unfed_dogs
end

def test_customer_can_be_charged
  day_care = Day_Care.new("The Dog Spot")
  customer_1 = Customer.new("Alice", "Jones", "2")
  customer_2 = Customer.new("Tracy", "Nguyen", "5")
  day_care.add_customer(customer_1)
  day_care.add_customer(customer_2)
  doggie_1 = Dog.new("Comet", "German Shepherd")
  doggie_2 = Dog.new("Lassie", "Collie")
  doggie_3 = Dog.new("Martha", "Bernese Mountain Dog")
  customer_1.add_dog(doggie_1)
  customer_2.add_dog(doggie_2)
  customer_2.add_dog(doggie_3)
  doggie_1.feed
  assert_equal day_care.charge , day_care.charge_customer
end

end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'
require './lib/customer'

class CustomerTest < MiniTest::Test
def test_it_returns_customer_full_name_and_id
  customer = Customer.new("Alice", "Jones", "2")

  assert_equal "Alice Jones", customer.full_name
  assert_equal "2", customer.id
end

def test_starts_with_an_empty_array_of_dogs
  customer = Customer.new("Alice", "Jones", "2")

  assert_equal [], customer.dogs
end

def test_it_returns_customer_full_name_and_idcustomer_can_have_dogs
  customer = Customer.new("Alice", "Jones", "2")
  doggie = Dog.new("Comet", "German Shepherd")
  customer.add_dog(doggie)

  assert_equal [doggie], customer.dogs
end

end

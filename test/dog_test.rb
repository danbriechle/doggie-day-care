require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

class dogTest < Minitest::Test

  def test_it_has_attributes
    doggie = Dog.new("Comet", "German Shepherd")

    assert_equal "Comet", dog.name
    assert_equal "German Shepherd", dog.breed
  end

  def test_it_can_have_different_attributes
    doggie = Dog.new("Lassie", "Collie")

    assert_equal "Lassie", dog.name
    assert_equal "Collie", dog.breed
  end

  def test_it_is_unfed_by_default
    doggie = Dog.new("Lassie", "Collie")

    assert_equal false, doggie.fed? 
  end

  def test_dog_can_be_fed
    doggie = Dog.new("Lassie", "Collie")

    assert_equal false, doggie.fed?
    assert_equal "Yum!", doggie.feed
    assert_equal true, doggie.fed?
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

class DogTest < Minitest::Test

  def test_it_has_attributes
    dog = Dog.new("Comet", "German Shepherd")

    assert_equal "Comet", dog.name
    assert_equal "German Shepherd", dog.breed
  end

  def test_it_can_have_different_attributes
    dog = Dog.new("Lassie", "Collie")

    assert_equal "Lassie", dog.name
    assert_equal "Collie", dog.breed
  end

  def test_it_is_unfed_by_default
    dog = Dog.new("Lassie", "Collie")

    assert_equal false, dog.fed?
  end

  def test_dog_can_be_fed
    dog = Dog.new("Lassie", "Collie")

    assert_equal false, dog.fed?
    assert_equal "Yum!", dog.feed
    assert_equal true, dog.fed?
  end
end

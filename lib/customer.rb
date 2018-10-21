class Customer
  attr_reader :full_name, :id, :dogs
  def initialize(first_name, last_name, id)
    @full_name = "#{first_name} #{last_name}"
    @id = id
    @dogs = []
  end

  def add_dog(dog)
    @dogs << dog
  end

end

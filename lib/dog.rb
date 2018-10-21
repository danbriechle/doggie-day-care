class Dog
  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @fed = false
  end

  def fed?
    @fed
  end

  def feed
    @fed = true
    p "Yum!"
  end

end

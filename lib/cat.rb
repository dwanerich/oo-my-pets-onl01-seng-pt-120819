class Cat

  attr_accessor :mood, :owner
  attr_reader :name


  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def Cat.all
    @@all
  end
end

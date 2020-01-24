class Cat

  attr_accessor :owner
  attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end
end

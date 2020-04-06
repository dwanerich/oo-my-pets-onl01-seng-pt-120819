class Owner

  attr_accessor :pets, :dogs, :cats, :mood
  attr_reader :name, :species


  @@all = []
  @@pets = [{:dogs => [], :cats => []}]

  def initialize(name)
    @name = name
    @pets = pets
    @@all << self
    @species = "human"
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.size
  end

  def self.reset_all
      @@all.clear
  end

  def cats
  self.pets.cats.all
  end

  def dogs
    @@pets[:dogs].all
  
  end

  def buy_cat(name)
  @@pets[:cats] << Cat.new(name)
    
  end

  def buy_dog(name)
    @@pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
    
  end

  def sell_pets

  end

  def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

  end
end

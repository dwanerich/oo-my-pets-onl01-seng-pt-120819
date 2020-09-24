require 'pry' 

class Owner

  attr_accessor :dog, :cat
  attr_reader :name, :species


  @@all = []
  @@pets = {:dogs => [], :cats => []}

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
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
    total = []
   Cat.all.each do |cat|
    if cat.owner == self
        total << cat
      end
   end
   total
  end

  def dogs
    # binding.pry
    allmydogs = []
    Dog.all.each do |dog|
      if dog.owner == self
        allmydogs << dog
      end
    end
    allmydogs
  end

  
  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat, self)

  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog, self)

  end

  def walk_dogs

    dogs = @@pets[:dogs]
    self.dogs.each do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats
    cats = @@pets[:cats]
    self.cats.each do |cat|
      cat.mood = 'happy'
    end
  end

  def sell_pets
   
    pets = self.dogs + self.cats
      pets.each do |pet|
        pet.owner = nil
        pet.mood = 'nervous'
    end
  end

  def list_pets
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."

  end

end

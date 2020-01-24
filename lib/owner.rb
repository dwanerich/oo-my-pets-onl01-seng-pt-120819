class Owner

  attr_accessor :dog, :cat
  attr_reader :name, :species


  @@all = []

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







  def buy_cat

  end

  def buy_dog

  end


end

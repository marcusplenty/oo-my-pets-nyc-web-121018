class Owner
  @@all = []
  attr_accessor :name, 
  attr_reader :species, :pets
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end
  def self.all
    @@all
  end 
  def self.count
    @@all.length 
  end 
  def self.reset_all
    @@all = []
  end 
  def say_species
    return "I am a #{@species}."
  end 
  
  def buy_fish(name)
    fish =Fish.new(name)
    @pets[:fishes] << fish 
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end 
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets
    @pets.each do |keys, values|
      values.each do |animal|
        animal.mood ="nervous"
      end
    end
    @pets = {}
  end 
  
  def list_pets
    
  end 
  
end
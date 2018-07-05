class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners=[]

  def initialize(species,pets= {:fishes=>[],:dogs=>[],:cats=>[]})
    @species=species
    @pets=pets
    @@owners<<self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes]<<Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats]<<Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs]<<Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs].each do |dogs|
      dogs.mood="happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cats|
      cats.mood="happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood="happy"
    end
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners=[]
  end

  def self.count
    @@owners.count
  end

end

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

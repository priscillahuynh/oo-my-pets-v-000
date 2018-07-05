class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners=[]

  def initialize(species,pets= {:fishes=>[],:dogs=>[],:cats=>[]})
    @species=species
    @@owners<<self
    @pets=pets
  end

  def say_species
    I am a "#{@species}".
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

  def species
    # self.species
  end
end

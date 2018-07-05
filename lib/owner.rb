class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners=[]

  def initialize(name)
    @name=name
    @@owners<<self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all=[]
  end

  def self.count
    @@all.count
  end

  def species
    # self.species
  end
end

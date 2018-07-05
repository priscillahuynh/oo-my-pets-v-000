class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners=[]

  def initialize(name)
    @name=name
    @@owners<<self
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

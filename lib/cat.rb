class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(name,species)
    @name=name
    @species=species
     self.mood="nervous"
  end
end

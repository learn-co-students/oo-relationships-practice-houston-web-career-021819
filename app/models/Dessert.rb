class Dessert
  @@all = []
  attr_accessor :name, :bakery

  def initialize (name:, bakery:)
    self.name = name
    self.bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select {|ing| ing.dessert == self}
  end
end

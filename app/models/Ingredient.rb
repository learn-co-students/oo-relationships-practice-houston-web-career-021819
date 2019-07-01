class Ingredient
  @@all = []
  attr_accessor :name, :calorie_count, :dessert

  def initialize (name:, calorie_count:, dessert:)
    self.name = name
    self.calorie_count = calorie_count
    self.dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end
end

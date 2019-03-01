class Bakery
  @@all = []
  attr_accessor :name, :location

  def initialize (name:, location:)
    self.name = name
    self.location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts
    Desserts.all.select {|des| des.bakery == self}
  end

  def ingredients
    (self.desserts.map {|dessert| dessert.ingredients}).flatten.uniq
  end

end

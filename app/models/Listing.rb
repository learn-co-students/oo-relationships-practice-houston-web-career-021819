class Listing

  @@all = []

  attr_accessor :trip_count, :city, :trips, :guests

  def initialize (trips:, trip_count:, city:, guests:)
    self.trips = trips
    self.trip_count = trip_count
    self.city = city
    self.guests = guests
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_city (city_name)
    self.all.select {|listing| listing.city == city_name}
  end

  def self.most_popular
    self.all.max_by {|listing| listing.trip_count}
  end
end

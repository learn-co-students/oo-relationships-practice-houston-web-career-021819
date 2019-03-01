class Guest

  @@all = []

  attr_accessor :listings, :trips, :trip_count, :name

  def initialize (name:, trip_count:, trips:, listings:)
    self.name = name
    self.trip_count = trip_count
    self.trips = trips
    self.listings = listings
    @@all << self
  end
  #
  # def trips
  #   Trip.all.select {|trips| trips.guest = self}
  # end
  #
  # def listings
  #   self.trips.map {|trip| trip.listing}
  # end

  def self.all
    @@all
  end

  def self.pro_traveller
    pro_travellers = []
    self.all.each do |traveller|
      if traveller.trip_count > 1
        pro_travellers << traveller
      end
    end
    pro_travellers
  end

  def self.find_all_by_name(name)
    self.all.select {|traveller| traveller.name == name}
  end
end

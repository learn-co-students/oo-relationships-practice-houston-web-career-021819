class Trip

  @@all = []

  attr_accessor :listing, :guest

  def initialize (listing:, guest:)
    self.listing = listing
    self.guest = guest
    guest.trip_count += 1
    listing.trip_count += 1
    listing.trips << self
    listing.guests << guest
    guest.trips << self
    guest.listings << listing
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
  end
end

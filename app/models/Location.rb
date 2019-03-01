class Location
  @@all = []
  attr_accessor :address

  def initialize (address:)
    self.address = address
    @@all << self
  end

  def self.all
    @@all
  end

  def total_sessions
    Session.all.select do |sess|

        #binding.pry
      sess.location == self
    end
  end #this returns all sessions at a location

  def total_clients
    (self.total_sessions.select {|sess| sess.client}).uniq.count
  end #this finds unique clients at a location

  def self.least_clients
    self.all.min_by {|loc| loc.total_clients}
  end #this finds location with least clients
end

class Session
  @@all = []
  attr_accessor :trainer, :client, :location, :date_time

  def initialize (trainer:, client:, location:, date_time:)
    self.trainer = trainer
    self.location = location
    self.client = client
    self.date_time = date_time
    @@all << self
  end

  def self.all
    @@all
  end
end

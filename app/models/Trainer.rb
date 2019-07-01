class Trainer
  @@all = []
  attr_accessor :name, :clients

  def initialize (name:)
      self.name = name
      self.clients = []
      @@all << self
  end

  def self.all
    @@all
  end

  def self.most_clients
    self.all.max_by {|trainr| trainr.clients.length}
  end
end

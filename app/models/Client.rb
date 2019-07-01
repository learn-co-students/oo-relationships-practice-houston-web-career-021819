class Client
  @@all = []
  attr_accessor :name, :trainer

  def initialize (name:)
    self.name = name
    @@all << self
  end

  def assign_trainer (trainer)
    self.trainer = trainer
    trainer.clients << self
  end

  def new_session (location, date_time)
    Session.new(trainer: self.trainer, client: self, location: location, date_time: date_time)
  end
end

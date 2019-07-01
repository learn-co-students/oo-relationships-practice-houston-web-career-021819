require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#airbnb tests
# houston_bungalow = Listing.new(trips: [], trip_count: 10, city: 'Houston', guests: [])
# conroe_bungalow = Listing.new(trips: [], trip_count: 1, city: 'Conroe', guests: [])
#
# adam = Guest.new(name: 'Adam', trips: [], trip_count: 10, listings: [])
# olivia = Guest.new(name: 'Olivia', trips: [], trip_count: 5, listings: [])
#
# adam_houston_trip = Trip.new(listing: houston_bungalow, guest: adam)
# olivia_conroe_trip = Trip.new(listing: conroe_bungalow, guest: olivia)
#end airbnb tests!

#gym tests
# adam = Client.new(name: 'Adam')
# zoe = Client.new(name: 'Zoe')
# jing = Client.new(name: 'Jing')
# hema = Client.new(name: 'Hema')
#
# downtown_gym = Location.new(address: '500 Main')
# heights_gym = Location.new(address: '2600 White Oak')
# montrose_gym = Location.new(address: 'Dunlavy at Alabama')
#
# trainer_mark = Trainer.new(name: 'Mark')
# trainer_alan = Trainer.new(name: 'Alan')
#
# adam.assign_trainer(trainer_mark)
# zoe.assign_trainer(trainer_alan)
# jing.assign_trainer(trainer_alan)
# hema.assign_trainer(trainer_alan)
#
# sesh1 = adam.new_session(downtown_gym, '022719-2000')
# sesh2 = adam.new_session(heights_gym, '022819-1000')
# sesh3 = adam.new_session(montrose_gym, '022919-1000')
# sesh4 = zoe.new_session(downtown_gym, '022719-2000')
# sesh5 = jing.new_session(heights_gym, '022819-2000')
# sesh6 = hema.new_session(downtown_gym, '022719-1000')
# sesh7 = hema.new_session(downtown_gym, '022719-1100')
#end gym test!
Pry.start

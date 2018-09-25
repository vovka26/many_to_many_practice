require_relative '../config/environment.rb'

bob = Tourist.new("Bob")
jane = Tourist.new("Jane")

statue_of_liberty = Landmark.new("Statue of Liberty", "NYC")
empire_state_building = Landmark.new("Empire State Building", "NYC")
lincoln_memorial = Landmark.new("Lincoln Memorial", "DC")
washington_monument = Landmark.new("Washington Monument", "DC")

trip1 = Trip.new(bob, statue_of_liberty)
trip2 = Trip.new(bob, empire_state_building)
trip3 = Trip.new(bob, lincoln_memorial)
trip4 = Trip.new(jane, lincoln_memorial)
trip5 = Trip.new(jane, washington_monument)

puts "Gets all tourists?"
puts Tourist.all == [bob, jane]

puts "Gets Tourist name?"
puts bob.name == "Bob"

puts "Can find tourist by name?"
puts Tourist.find_by_name("Bob") == bob

puts "Can get tourist's trips?"
puts bob.trips == [trip1, trip2, trip3]

puts "Can get tourist's landmarks?"
puts bob.landmarks == [statue_of_liberty, empire_state_building, lincoln_memorial]

puts "Can create a new trip?"
trip6 = jane.visit_landmark(statue_of_liberty)
puts jane.trips == [trip4, trip5, trip6]

puts "Gets all landmarks?"
puts Landmark.all == [statue_of_liberty, empire_state_building, lincoln_memorial, washington_monument]

puts "finds landmarks in a city?"
puts Landmark.find_by_city("DC") == [lincoln_memorial, washington_monument]

puts "gets trips to landmark?"
puts lincoln_memorial.trips == [trip3, trip4]

puts "gets tourists to landmark?"
puts lincoln_memorial.tourists == [bob, jane]

puts "gets all trips?"
puts Trip.all == [trip1, trip2, trip3, trip4, trip5, trip6]

puts "Gets Trip's tourist?"
puts trip1.tourist == bob

puts "Gets Trip's landmark?"
puts trip1.landmark == statue_of_liberty
binding.pry
0

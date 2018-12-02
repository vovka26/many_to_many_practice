require_relative '../config/environment.rb'

t1 = Tourist.new("Ben")
t2 = Tourist.new("Clark")
t3 = Tourist.new("Amanda")

l1 = Landmark.new("l1", "Paris")
l2 = Landmark.new("l2", "NYC")
l3 = Landmark.new("l3", "London")

trip1 = Trip.new(t1, l2)
trip2 = Trip.new(t1, l1)
trip3 = Trip.new(t2, l3)
trip4 = Trip.new(t2, l1)
trip5 = Trip.new(t3, l1)


binding.pry

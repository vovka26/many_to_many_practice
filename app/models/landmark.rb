class Landmark
  attr_reader :name, :city

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.find_by_city(city)
    Trip.all.select {|trip| trip.landmark.city == city  }
  end

  def trips
    Trip.all.select {|trip| trip.landmark == self}
  end

  def tourists
    trips.map {|trip| trip.tourist}
    # binding.pry
  end

end

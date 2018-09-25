class Landmark

    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name, @city = name, city
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.find_by_city(city)
        @@all.select {|landmark| landmark.city == city}
    end

    def trips
        Trip.all.select {|trip| trip.landmark == self}
    end

    def tourists
        self.trips.collect {|trip| trip.tourist}
    end

end
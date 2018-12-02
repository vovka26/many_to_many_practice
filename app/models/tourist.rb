class Tourist
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.find_by_name(name)
    self.all.find {|t| t.name == name}
  end

  def trips
    Trip.all.select {|trip| trip.tourist == self}
  end

  def landmarks
    trips.map {|trip| trip.landmark}
  end

  def visit_landmark(landmark)
    Trip.new(self, landmark)
  end

end

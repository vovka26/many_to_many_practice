class Trip
  attr_accessor :tourist, :landmark

  @@all = []

  def self.all
    @@all
  end

  def initialize(tourist, landmark)
    @tourist = tourist
    @landmark = landmark
    self.class.all << self
  end

end

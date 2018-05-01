class Band

  attr_accessor :name
  attr_reader :hometown

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  def introduction
    "Hello, we are #{self.name} and we're from #{self.hometown}"
  end

  def self.all_introductions
    self.all.map do |band|
      band.introduction
    end
  end

  def play_in_venue(venue, date)
    Concert.new(date,self,venue )
  end

  def concerts
    Concert.all.select do |concert|
      concert.band == self
    end
  end

  def venues
    # self.concerts.map(&:venue)
    self.concerts.map do |concert|
      concert.venue
    end
  end

end

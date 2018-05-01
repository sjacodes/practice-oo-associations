class Venue

  attr_accessor :title, :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select do |concert|
      concert.venue == self
    end
  end

  def bands
    self.concerts.map(&:band)
    # self.concerts.map do |concert|
    #   concert.band
    # end
  end

end

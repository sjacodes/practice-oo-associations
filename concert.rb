class Concert

attr_accessor :date, :band, :venue

@@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

  # - Concert should have methods Concert#band and Concert#venue that return the band and venue associated to the Concert
  # no method needed - can be done through initialize method => concert1.band and concert1.venue


  # - Concert should have a method Concert#hometown_show? that returns true if the concert is in the band's hometown
  def hometown_show
    if self.venue.city == self.band.hometown
      return true
    end
  end


end

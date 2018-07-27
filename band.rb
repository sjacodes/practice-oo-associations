class Band

attr_accessor :name, :hometown

@@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  # Band should have a method Band#play_in_venue that takes a venue and date  as arguments and associates the band to that venue
  def play_in_venue(venue, date)
    concert = Concert.new(date, self, venue)
  end

  # - Band should have a method Band#concerts should return an array of all that band's concerts
  def concerts
    Concert.all.select{|concert| concert.band == self}
  end

  # - Band should have a method Band.all_introductions that puts out a message of
  # "Hello, we are {insert band name here} and we're from {insert hometown here}" for each band

  def self.all_introductions
    Band.all.each do |band|
      puts "Hello, we are #{band.name} and we're from #{band.hometown}."
    end
  end

  # - Band should have a method Band#venues that returns an array of all the venues the band has concerts in
  def venues
    bands_concert = Concert.all.select {|concert| concert.band == self}
    bands_concert.map {|concert| concert.venue.title}
  end

end

require 'pry'
require_relative './band.rb'
require_relative './concert.rb'
require_relative './venue.rb'

#bands
destinys_child = Band.new("destinys_child", "syd")
rhcp = Band.new("rhcp", "brazil")
spice_girls = Band.new("spice_girls", "uk")

#venues
opera_house = Venue.new("opera_house", "syd")
madison_square = Venue.new("madison_square", "nyc")
shard = Venue.new("shard", "lon")

 #concerts
concert1 = Concert.new("1/1/18", destinys_child, opera_house)
concert2 = Concert.new("1/1/18", destinys_child, madison_square)



binding.pry

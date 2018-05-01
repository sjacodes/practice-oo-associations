require 'pry'
require_relative './band.rb'
require_relative './concert.rb'
require_relative './venue.rb'

the_who = Band.new('The Who', 'Across the Pond')
dmb = Band.new('dmb','virginia')
the_strokes = Band.new('The Strokes', 'NYC')


radio_city = Venue.new('Radio City', 'NYC')
msg =  Venue.new('MSG','NYC')
rah = Venue.new('Royal Albert Hall', 'Across the Pond')


the_strokes.play_in_venue(rah, 'Today')
the_strokes.play_in_venue(msg, 'Tomorrow')
Concert.new('November 11, 1982',dmb, msg)

binding.pry

hi = 'hello'

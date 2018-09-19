require 'pry'
# this function runs in terminal
# it picks a season and episode at random
# then returns the result as a string

def episode_picker
  season = rand(3..9)
  episode = rand(1..23)
  puts "Season: #{season} Episode: #{episode}"
end

episode_picker

binding.pry

p 'end'

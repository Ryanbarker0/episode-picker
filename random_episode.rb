def episode_picker
  season = rand(3..9)
  episode = rand(1..23)
  puts "Season: #{season} Episode: #{episode}"
end

episode_picker

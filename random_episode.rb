require 'pry'
# this function runs in terminal
# it picks a season and episode at random
# then returns the result as a string

# def episode_picker
#   season = rand(3..9)
#   episode = rand(1..23)
#   puts "Season: #{season} Episode: #{episode}"
# end

def random_num_generator
  first_num = rand(1..1)
  second_num = rand(3..3)
  second_num < 10 ? "0#{first_num}0#{second_num}" : "0#{first_num}#{second_num}"
end

def video_file_iterate

  Dir.foreach("/Users/Ryan/Documents/GitHub/episode-picker/videos") do |item|
    next if item == '.' or item == '..'
    return "#{item[0..3]}"
  end
end

def episode_selector
  path = "/Users/Ryan/Documents/GitHub/episode-picker/videos/"
  if random_num_generator == video_file_iterate #NOTE: in theory, video_file_iterate keeps looping if it is not equal
                                                #i don't think this is happening, need to look into how we iterate
    system %{open "#{path}#{video_file_iterate}.mkv"}
  end
end

binding.pry

p 'end'


# # episode_picker

#!/bin/ruby

# this function runs in terminal
# it picks a season and episode at random
# then returns the result as a string

def random_num_generator
  first_num = rand(2..9) #NOTE: generates a random number that is firt name and last name. s
  second_num = rand(1..25)
  second_num < 10 ? "0#{first_num}0#{second_num}" : "0#{first_num}#{second_num}"
  #this returns value that, for example is 0101, relative to whether or not there is a requirement for the additional "0"
  #value is equal to a string
end

#NOTE: terminal is outputting You are Watching, multiple times, but only opens 1 episode.
def episode_picker
  Dir.foreach("/Users/Ryan/Documents/GitHub/videos") do |x|
    next if x == "." or x == ".."
    if x == "#{random_num_generator}.mkv"
      system %{open "/Users/Ryan/Documents/GitHub/videos/#{x}"}
    elsif x == "#{random_num_generator}.mp4"
      puts "You are watching Season: #{x[0..1]} Episode: #{x[2..3]}!"
      system %{open "/Users/Ryan/Documents/GitHub/videos/#{x}"}
    elsif x == "#{random_num_generator}.avi"
      puts "You are watching Season: #{x[0..1]} Episode: #{x[2..3]}!"
      system %{open "/Users/Ryan/Documents/GitHub/videos/#{x}"}

    end
  end
end

episode_picker

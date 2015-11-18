puts "Hey I need you to tell me something again, preferably with a lot of words in it"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)
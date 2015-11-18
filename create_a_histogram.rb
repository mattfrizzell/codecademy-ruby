# Get user input
puts "Hey I need you to tell me something again, preferably with a lot of words in it"
text = gets.chomp

#Put all the words into an array
words = text.split(" ")

frequencies = Hash.new(0)

words.each do |word|
   frequencies[word] += 1
end

frequencies = frequencies.sort_by do |word, count|
    count
end
frequencies.reverse!

frequencies.each {|word, word_count|
    puts word + " " + word_count.to_s
}
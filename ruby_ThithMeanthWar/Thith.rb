print "Tell me something I don't know: "

user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
   user_input.gsub!(/s/, "th")
   puts "What doeth thith even mean: '#{user_input}'?"
else
    print "Well that stinks, you didn't tell me anything that included the letter 'S'. :("
end
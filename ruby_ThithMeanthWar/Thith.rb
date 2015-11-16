print "Tell me something I don't know: "

user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
   print "Yep, you have an s in there"
end
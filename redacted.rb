puts "Give me phrase please."
text = gets.chomp

puts "Now what word should we strike from the record?"
redact = gets.chomp

words = text.split(" ")

words.each {|word| 
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
}
puts "Give me phrase please."
text = gets.chomp

puts "Now what word(s) should we strike from the record? (Seperate mutliple words with a comma"
redact = gets.chomp
redacted_words = redact.split(",")

words = text.split(" ")

redacted_text = ""

words.each {|word| 
    doit = false
    redacted_words.each { |r_word|
        if word.downcase == r_word.downcase
            doit = true
            break
        end
    }
    
    if doit
        redacted_text += "REDACTED "
    else
        redacted_text += word + " "
    end
}
print redacted_text
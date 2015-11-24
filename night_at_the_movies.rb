movies = {
    scott_pilgrim_saves_the_world: 100    
}

puts "Do you want to do things with movies?"
choice = gets.chomp

case choice
when "add"
    puts "Please specify a movie title."
    title = gets.chomp
    
    puts "Now, on a scale of 1-100, what would you rate #{title}?"
    rating = gets.chomp
    
    if !movies[title.to_sym]
        movies[title.to_sym] = rating.to_i
        puts "Successfully added the movie #{title}, with a rating of #{rating} to your collection!"
    else
        puts "Warhing: #{title} is already in your movie collection!"
    end

when "update"
    puts "Please specify a movie title."
    title = gets.chomp
    
    if !movies[title.to_sym]
        puts "Warhing: #{title} is not in your collection, so there is nothing to update."
    else
        puts "Now, on a scale of 1-100, what would you rate #{title}?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Successfully updated the movie #{title}, with a rating of #{rating}."
    end
    
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end
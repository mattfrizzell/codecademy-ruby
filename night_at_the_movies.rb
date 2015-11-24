movies = {
    scott_pilgrim_saves_the_world: 100    
}

puts "Do you want to do things with movies?"
choice = gets.chomp

case choice
when "add"
    puts "Added!"
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end
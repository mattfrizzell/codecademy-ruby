def alphabetize (arr, rev=false)
    if rev == true
        arr.reverse!
    else
        arr.sort!
    end
end

numbers = [7,34,13,55,3]

puts alphabetize(numbers)
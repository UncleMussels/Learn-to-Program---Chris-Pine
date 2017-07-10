def numeral_to_integer
    puts "Give us a year using roman numerals (M, D, C, V, X, or I) and I'll convert it to an integer!"
    roman = gets.chomp.downcase
    roman_array = roman.split("")
    index = roman_array.length - 1

    numerals = { 'i' => 1,
                 'v' => 5,
                 'x' => 10,
                 'l' => 50,
                 'c' => 100,
                 'd' => 500,
                 'm' => 1000

    }

    final_integer = 0

    while true
        if numerals[roman_array[index]] == nil || roman == ""
            puts "Invalid letters! Try again."
            roman = gets.chomp.downcase
            roman_array = roman.split("")
            index = roman_array.length - 1
            final_integer = 0
        else
            final_integer += numerals[roman_array[index]]
            index -= 1
            if index < 0
                break
            end
        end 
    end

    puts final_integer

end

numeral_to_integer



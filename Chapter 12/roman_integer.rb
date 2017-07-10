def numeral_to_integer
    puts "Give us a year using roman numerals (M, D, C, V, X, or I) and I'll convert it to an integer!"
    roman = gets.chomp.downcase

    if roman == ""
        numeral_to_integer
    end

    roman_array = roman.split("")

    numerals = { 'i' => 1,
                 'v' => 5,
                 'x' => 10,
                 'l' => 50,
                 'c' => 100,
                 'd' => 500,
                 'm' => 1000

    }

    final_integer = 0
    roman_length = roman_array.length - 1

    while roman_length >= 0
      if numerals[roman_array[roman_length]] != nil 
        final_integer += numerals[roman_array[roman_length]]
        roman_length -= 1
      else 
        puts "Invalid letters! Try again."
        numeral_to_integer
      end
    end

    puts final_integer

end

numeral_to_integer



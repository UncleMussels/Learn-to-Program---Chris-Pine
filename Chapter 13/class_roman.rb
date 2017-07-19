class Integer
  def old_roman
    num = self
    roman_num = ""

    if num >= 1000
      thousands = num / 1000
      roman_num << "M" * thousands
      num = num % 1000
    end

    if num >= 500
      roman_num << "D"
      num = num % 500
    end

    if num >= 100
      hunds = num / 100
      roman_num << "C" * hunds
      num = num % 100
    end  

    if num >= 50
      roman_num << "L"
      num = num % 50
    end  

    if num >= 10
      tens = num / 10
      roman_num << "X" * tens
      num = num % 10
    end

    if num >= 5
      roman_num << "V"
      num = num % 5
    end

    if num >= 1
      roman_num << "I" * num
    end

    puts roman_num
  end
end

puts "Give us a number between 0 and 3000: "
while true
  num = gets.chomp.to_i
  if num <= 0 || num >= 3000
    puts "BETWEEN 0 AND 3000, JERK"
  else
    print "Here's your number converted to roman numerals: "
    break
  end
end

num.old_roman


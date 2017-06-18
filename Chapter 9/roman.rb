# Program to print out the "old-school" Roman numeral version of a user-input number
# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000

#collect number
#find out if number is divisible by 1000 -> convert # of thousands to "M"s -> add to roman_num

def old_roman num
  roman_num = ""

  if num >= 1000
    thousands = num / 1000
    roman_num << "M" * thousands
    num = num % 1000
  end

  puts roman_num
  puts num
end

old_roman 2065




  
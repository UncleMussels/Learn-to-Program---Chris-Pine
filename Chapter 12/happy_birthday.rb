def happy_birthday 

  puts "What year were you born?"
  year = gets.chomp.to_i

  puts "What month were you born?"
  month = gets.chomp.to_i

  puts "What day were you born?"
  day = gets.chomp.to_i

  age_in_years = "SPANK! " * (((((Time.new - Time.local(year, month, day)) / 60) / 60) / 24) / 365).to_i

  puts "Here are your spankings!\n"
  puts age_in_years

end

happy_birthday
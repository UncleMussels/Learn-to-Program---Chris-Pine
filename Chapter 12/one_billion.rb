def ages_and_ages

  puts "What year were you born?"
    while true
    year = gets.chomp.to_i
      if year > 2017 || year < 1900
        puts "You aren't from the future. What year were you born? Use the format 'YYYY'."
      else 
        break
      end
    end

  puts "What month were you born?"
    while true
    month = gets.chomp.to_i
      if month > 12 || month < 1
        puts "That's not a month. What month were you born? Use the format 'MM'."
      else
        break
      end
    end
    

  puts "What day were you born?"
    while true
    day = gets.chomp.to_i
      if day > 31 || day < 1
        puts "That's not a day. What day were you born? Use the format 'DD'."
      else
        break
      end
    end

  puts "What hour were you born? Use military time."
    while true
    hour = gets.chomp.to_i
      if hour > 23 || hour < 00
        puts "That's not an hour. What hour were you born? Use military time (00 - 23) in the format 'HH'."
      else
        break
      end
    end

  puts "How many minutes after #{hour} were you born?"
    while true
    minute = gets.chomp.to_i
      if minute > 59 || hour < 00
        puts "That's not a minute. What minute were you born? Use the format 'MM'."
      else
        break     
      end
    end


  birthday = Time.gm(year, day, month, hour, minute)
  billion_time = birthday.to_i + 1000000000
  current_time = Time.new.to_i

  if billion_time < current_time
    puts "You turned 1 billion seconds old on #{Time.at(billion_time)}."
  else
    puts "You will turn 1 billion seconds old on #{Time.at(billion_time)}"
  end

end

ages_and_ages



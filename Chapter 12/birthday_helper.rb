def birthday_helper

        birthday_hash = {}
        month_array = ["", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

        #read the file and save each line to the 'birthday' hash
        File.read('birthdays.txt').each_line do |line|
          line = line.split(" - ")
          birthday_hash[line[0]] = line[1].chomp
        end


        puts "Type a family member's name to get their next birthday and age!"
        name = gets.chomp

        current_time = Time.now
        this_year = Time.now.year
        next_year = this_year + 1

        year = birthday_hash[name][-4..-1].to_i
        month = month_array.index(birthday_hash[name][0..2]).to_i
        day = birthday_hash[name][4..5].to_i
        month_day_string = birthday_hash[name][0..5]

        if Time.local(this_year, month, day) < current_time
          puts "#{name} will be #{next_year - year} on #{month_day_string}, #{next_year}."
        else 
          puts "#{name} will be #{this_year - year} on #{month_day_string}, #{this_year}."
        end
        
end
          
birthday_helper
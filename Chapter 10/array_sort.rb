puts "Give us your words! Press \"Enter\" after each word to submit it."

def sorter(list)

  sorted_array = list.each {|first, second| first <=> second } 
  
puts sorted_array
end  

words = []

while true
  print "Word: "
  word = gets.chomp
  words.push word  
  if word == ""
    break
  end
end

sorter(words)
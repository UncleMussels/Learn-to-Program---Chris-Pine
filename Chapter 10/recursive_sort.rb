
def sorter(list)
  recursive_sort(list, [])
end  

def recursive_sort(unsorted, sorted)
  sorted << unsorted.min #add "smallest" word to sorted array
  unsorted.delete(unsorted.min) #delete "smallest" word from unsorted array
  if unsorted.length != 0 #check to see if all words have been sorted; recursive loop if not.
    recursive_sort(unsorted, sorted)
  else
     puts sorted
  end
 
end

puts "Give us your words! Press \"Enter\" after each word to submit it."

words = []

while true
  print "Word: "
  word = gets.chomp 
  if word == ""
    break
  else
    words.push word 
  end
end

sorter(words)
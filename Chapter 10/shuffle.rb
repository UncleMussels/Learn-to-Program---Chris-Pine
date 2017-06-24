
def shuffler(list)
  recursive_shuffler(list, [])
end  

def recursive_shuffler(unshuffled, shuffled)
  rando = rand(unshuffled.length)  #pick a random string from the array
  rando_string = unshuffled[rando]
  shuffled << rando_string #add random string to the shuffled list
  unshuffled.delete(unshuffled[rando]) #delete from unshuffled lest
  if unshuffled.length != 0 #check to see if all words have been shuffled; recursive loop if not.
    recursive_shuffler(unshuffled, shuffled)
  else
     puts shuffled
  end
 
end 

puts "Give us your words to shuffle! Press \"Enter\" after each word to submit it."

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

shuffler(words)
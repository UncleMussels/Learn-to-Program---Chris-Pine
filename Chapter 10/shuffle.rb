
def shuffler(list)
  recursive_shuffler(list, [])
end  

def recursive_shuffler(unshuffled, shuffled)
   
  while unshuffled.length > 0 do
    random_word = unshuffled.slice(rand(0..unshuffled.length-1))
    unshuffled.delete(random_word)
    shuffled << random_word
    recursive_shuffler(unshuffled, shuffled)
  end
    puts shuffled
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
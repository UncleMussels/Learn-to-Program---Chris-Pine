class Array
        def shuffler
          list = self
          recursive_shuffler(list, [])
        end  

        def recursive_shuffler(unshuffled, shuffled)
           
          word = rand(unshuffled.length)
          shuffled << unshuffled[word]
          unshuffled.delete_at(word)
          
          while unshuffled.length > 0 do
            recursive_shuffler(unshuffled, shuffled)
          end
          
          return shuffled

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

puts words.shuffler



# create an array of all songs with these formats:

def playlist

  Dir.chdir '/Users/owenturkle/Desktop'

  # create an array of all songs with these formats:
  songs = shuffler(Dir['/Users/owenturkle/Desktop/**/*.{ogg,mp3,mp4,m4a}'])

  filename = 'playlist.m3u'

  File.open filename, 'w' do |f| # open the file
    songs.each do |mp3| # include our songs array in the file
      f.write mp3 + "\n" # write out each song in the array, in the file
    end
  end

  puts "Playlist created!"
end



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
    return shuffled
end 

playlist 
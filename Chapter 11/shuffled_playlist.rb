
def playlist_shuffle(array)

  playlist = array.shuffle

  filename = "new_playlist.txt"

  File.open filename, 'w' do |f| # open the file
    playlist.each do |mp3| # include our songs array in the file
      f.write mp3 + "\n" # write out each song in the array, in the file
    end
  end

  puts "Playlist created!"
end


Dir.chdir '/Users/owenturkle/Desktop'

# create an array of all songs with these formats:
songs = Dir['/Users/owenturkle/Desktop/**/*.{ogg,mp3,mp4,m4a}']

playlist_shuffle(songs)
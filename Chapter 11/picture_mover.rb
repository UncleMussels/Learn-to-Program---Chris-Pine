# navigate to the folder we want to store the photos in
Dir.chdir  '/Users/owenturkle/Desktop/Program/Chapter 11/Pics'

# First we find all of the pictures to be moved.
pic_names = Dir['/Users/owenturkle/Desktop/*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Relocating #{pic_names.length} files: \n"

# This will be our counter. We'll start at 1 
pic_number = 1

pic_names.each do |name|
  print '.' # This is our "progress bar".

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name)
    puts "Filename #{new_name} already exists and cannot be overwritten. Sorry!"
    exit 
  else
    File.rename name, new_name
  end

  # Finally, we increment the counter.
  pic_number = pic_number + 1
end

puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'
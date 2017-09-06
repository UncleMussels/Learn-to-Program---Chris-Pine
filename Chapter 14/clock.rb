def clock(&block)
  t = Time.now
  t.hour.times do |hour|
    block.call
  end
end

clock do 
  puts 'Chime!'
end
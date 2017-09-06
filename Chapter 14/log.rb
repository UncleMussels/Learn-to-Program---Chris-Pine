def log(description, &block)
  puts "#{description} started"
  result = block.call
  puts "#{description} ended; block output: #{result}"
end

log('First log') do 
  log('Second log') do
    'confirmed'
  end

  'confirmed'
end
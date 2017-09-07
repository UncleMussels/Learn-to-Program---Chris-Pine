$nesting_depth = ''

def log(description, &block)
  puts "#{$nesting_depth}#{description} started"
  $nesting_depth << ' '
  result = block.call
  $nesting_depth.sub!(' ', '')
  puts "#{$nesting_depth}#{description} ended; block output: #{result}"
end

log('First log') do 
  log('Second log') do
    log('Third log') do
      'confirmed'
    end
    'confirmed'
  end
  'confirmed'
end
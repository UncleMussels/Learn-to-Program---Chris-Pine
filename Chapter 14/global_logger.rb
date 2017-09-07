$nesting_depth = ''

def log(description, &block)
  puts "#{$nesting_depth}#{description} started"
  result = block.call
  puts "#{$nesting_depth}#{description} ended; block output: #{result}"
end

log('First log') do 
  $nesting_depth << ' '
  log('Second log') do
    $nesting_depth << ' '
    log('Third log') do
      'confirmed'
    end
    $nesting_depth.sub!(' ', '')
    'confirmed'
  end
  $nesting_depth = ''
  'confirmed'
end
class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 
    @stuff_in_intestine = 0 
    
    puts "#{@name} is born."
  end

  def name
    @name
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end
  
  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end
  
  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end
  
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else 
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit 
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end
end


# ask the user to name the dragon
  # insert name into class.new method
  #ask user what action they would like to take: feed, walk, rock, put to bed
    # if xxxx, call xxxx method.

puts "Your baby dragon is almost born! What would you like to call it?"
name = gets.chomp
dragon = Dragon.new name 

while true
  puts "What would you like to do with #{dragon.name}? Choose from feed, walk, toss, rock, or put to bed."
  action = gets.chomp

  case action
  when "feed" then dragon.feed
  when "walk" then dragon.walk
  when "toss" then dragon.toss
  when "rock" then dragon.rock
  when "put to bed" then dragon.put_to_bed
  when "quit" then exit
  else
    puts "Error: please use one of the commands above."
  end
end



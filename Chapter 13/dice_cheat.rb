class Die

  def initialize
    roll
  end

  def roll
    @number_rolled = rand(1..6)
  end

  def showing
    @number_rolled
  end

  def cheat(x)
    if (1..6).include?(x)
      @number_rolled = x
      puts "Dice is now set to #{@number_rolled}"
    else
       puts "You may only set the die using numbers 1 - 6, cheater!"
    end
  end

end


die = Die.new
puts "Dice is currently showing #{die.showing}"
die.cheat(0)
puts die.showing
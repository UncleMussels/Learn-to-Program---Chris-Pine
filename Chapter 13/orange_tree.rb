# tree is planted
  # age += 1
    # if tree == healthy, height += x
      # if tree > x years old, then fruit appears 
    # if tree is dead, no height gain and no fruits
  # if current oranges > 0, pick an orange and current oranges -=1


class OrangeTree

  def initialize
    @alive = true
    @age = 1
    @height = 4
    @oranges = 0
    "You plant a 4 foot orange sapling."
  end

  def height
    if @alive
      "Your tree is #{@height} feet tall"
    else
      "Your tree died but was #{@height} ft at it's peak."
    end
  end

  def age
    "Your tree is #{@age} years old"
  end

  def one_year_passes
    if  @alive 
        @age += 1
        @height += 2
        @oranges = @age * 13 if @age > 3
        @alive = false if @age > 30
        "The tree has aged a year."
    else
      "The tree has passed on :("
    end
  end

  def count_the_oranges
    if @alive
      "There are #{@oranges} oranges on the tree."
    else
      "Dead trees don't make oranges :("
    end
  end

  def pick_an_orange
    if @alive && @oranges >= 1
       @oranges -= 1
      "You pick an orange and there are #{@oranges} oranges left."
    elsif @alive && @oranges == 0
      "There are no oranges to pick"
    else
      "The tree is super dead and without oranges."
    end
  end

end

tree = OrangeTree.new
25.times do 
  tree.one_year_passes
end
puts tree.height
puts tree.count_the_oranges
puts tree.pick_an_orange
puts tree.one_year_passes
puts tree.one_year_passes
puts tree.count_the_oranges
puts tree.pick_an_orange
puts tree.height
puts tree.one_year_passes
puts tree.one_year_passes
puts tree.one_year_passes
puts tree.age
puts tree.count_the_oranges
puts tree.height
puts tree.pick_an_orange
puts tree.one_year_passes

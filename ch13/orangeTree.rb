class OrangeTree
  def initialize
    @height = 0
    @oranges = 0
    @alive = true
  end
  def height
    if @alive
      "The tree is #{@height} meters tall"
    else
      'The tree is not alive'
    end
  end
  def count_oranges
    if @alive
      "The tree has #{@oranges} oranges"
    else
      'The tree is not alive'
    end
  end
  def one_year
    if @alive
      @height = @height + 1
      @oranges = 0
      if @height > 10 && rand(2) > 0
        @alive = false
        'The tree has died'
      elsif @height > 5
        @oranges = (@height * 6 - 25)
        "The tree grew to #{@height} meters and produced #{@oranges} oranges"
      else
        "The tree grew to #{@height}, but produced no oranges"
      end
    else
      'The tree is still dead'
    end
  end
  def pick_orange
    if @alive
      if @oranges > 0
        @oranges = @oranges - 1
        'One orange has been picked'
      else
        'No oranges can be picked'
      end
    else
      'The tree is dead so no oranges can be picked'
    end
  end
end
orange_tree = OrangeTree.new
3.times do
  orange_tree.one_year
end
puts(orange_tree.one_year)
puts(orange_tree.count_oranges)
puts(orange_tree.height)
puts(orange_tree.one_year)
puts(orange_tree.one_year)
puts(orange_tree.one_year)
puts(orange_tree.height)
puts(orange_tree.pick_orange)
puts(orange_tree.count_oranges)
puts(orange_tree.one_year)
puts(orange_tree.one_year)
puts(orange_tree.one_year)
puts(orange_tree.one_year)
puts(orange_tree.one_year)
puts(orange_tree.count_oranges)
puts(orange_tree.height)
puts(orange_tree.pick_orange)
puts(orange_tree.count_oranges)
  
    

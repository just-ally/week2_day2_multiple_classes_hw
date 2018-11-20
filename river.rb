class River

attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def lose_fish()
    fish_to_eat = @fish.shift(1)
    return fish_to_eat
  end

  def fish_count()
    return @fish.count
  end

end

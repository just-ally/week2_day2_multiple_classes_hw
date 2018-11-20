class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(river)
    fish_to_eat = river.lose_fish()
    @stomach << fish_to_eat
  end

  def noise
    return "Roar" if(@type == "Grizzly")
  end

  def food_count
    return @stomach.count
  end

end

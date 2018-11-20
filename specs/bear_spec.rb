require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_can_get_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_can_get_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_stomach_contents
    assert_equal(0, @bear.stomach.count)
  end

  def test_bear_take_fish_from_river
    fish1 = Fish.new("Bob")
    fish2 = Fish.new("Billy")
    fish3 = Fish.new("Barry")
    fish = [fish1, fish2, fish3]
    river = River.new("Amazon", fish)

    @bear.take_fish(river)
    assert_equal(1, @bear.stomach.count)
  end

  def test_bear_noise
    assert_equal("Roar", @bear.noise)
  end

  def test_count_bear_food
    assert_equal(0, @bear.food_count)
  end


end

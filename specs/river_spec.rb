require('minitest/autorun')
require('minitest/rg')
# require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup()
    fish1 = Fish.new("Bob")
    fish2 = Fish.new("Billy")
    fish3 = Fish.new("Barry")
    fish = [fish1, fish2, fish3]
    @river = River.new("Amazon", fish)
  end

  def test_can_get_name()
    assert_equal("Amazon", @river.name)
  end

  def test_can_get_fish()
    assert_equal(3, @river.fish.count)
  end

  def test_river_can_lose_fish()
    result = @river.lose_fish
    assert_equal(2, @river.fish.count)
  end

  def test_count_river_fish
    assert_equal(3, @river.fish_count)
  end

end

require('minitest/autorun')
require('minitest/rg')
# require_relative('../bear.rb')
require_relative('../fish.rb')
# require_relative('../river.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Sarah")
  end

  def test_can_get_fish_name
    assert_equal("Sarah", @fish.name)
  end

end

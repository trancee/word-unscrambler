require "test/unit"
require_relative "unscramble"

class TestUnscramble < Test::Unit::TestCase
  def setup
    @unscramble = Unscramble.new()
  end

  # def teardown
  # end

  def test
    assert_equal("astronaut", @unscramble.compare("stonatura"))
    assert_equal("kitty", @unscramble.compare("tikty"))

    assert_not_equal("yodel", @unscramble.compare("lodey"))
  end
end
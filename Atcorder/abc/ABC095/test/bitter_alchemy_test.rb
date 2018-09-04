require 'minitest/autorun'
require './lib/bitter_alchemy'

class BitterAlchemyTest < Minitest::Test
  def test_bitter_alchemy
    test1 = <<~TEXT
    3 1000
    120
    100
    140
    TEXT
    assert_equal 9, bitter_alchemy(test1)
  end
end

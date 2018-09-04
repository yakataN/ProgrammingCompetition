require 'minitest/autorun'
require './lib/something_on_it'

class SomethingOnItTest < Minitest::Test
  def test_something_on_it
    assert_equal 900, something_on_it('oxo')
    assert_equal 1000, something_on_it('ooo')
    assert_equal 700, something_on_it('xxx')
  end
end

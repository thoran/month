# tc_Month_self.beginning

# 20110702, 04
# 0.7.0

require 'date'
require 'Month/self.beginning'

class TC_Month_self_beginning < Test::Unit::TestCase
  
  def test_self_beginning
    assert_equal Date.new(2006, 1, 1), Month.beginning(1, 2006)
    assert_equal Date.new(2006, 2, 1), Month.beginning(2, 2006)
    assert_equal Date.new(2008, 2, 1), Month.beginning(2, 2008)
    assert_equal Date.new(2006, 3, 1), Month.beginning(3, 2006)
    assert_equal Date.new(2006, 4, 1), Month.beginning(4, 2006)
    assert_equal Date.new(2006, 5, 1), Month.beginning(5, 2006)
    assert_equal Date.new(2006, 6, 1), Month.beginning(6, 2006)
    assert_equal Date.new(2006, 7, 1), Month.beginning(7, 2006)
    assert_equal Date.new(2006, 8, 1), Month.beginning(8, 2006)
    assert_equal Date.new(2006, 9, 1), Month.beginning(9, 2006)
    assert_equal Date.new(2006, 10, 1), Month.beginning(10, 2006)
    assert_equal Date.new(2006, 11, 1), Month.beginning(11, 2006)
    assert_equal Date.new(2006, 12, 1), Month.beginning(12, 2006)
  end
  
end

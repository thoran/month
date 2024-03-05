# tc_Month_self.end_of_month

# 20110706
# 0.8.0

require 'date'
require 'Month/self.end_of_month'

class TC_Month_self_end_of_month < Test::Unit::TestCase
  
  def test_self_end_of_month
    assert_equal Date.new(2006, 1, 31), Month.end_of_month(1, 2006)
    assert_equal Date.new(2006, 2, 28), Month.end_of_month(2, 2006)
    assert_equal Date.new(2008, 2, 29), Month.end_of_month(2, 2008)
    assert_equal Date.new(2006, 3, 31), Month.end_of_month(3, 2006)
    assert_equal Date.new(2006, 4, 30), Month.end_of_month(4, 2006)
    assert_equal Date.new(2006, 5, 31), Month.end_of_month(5, 2006)
    assert_equal Date.new(2006, 6, 30), Month.end_of_month(6, 2006)
    assert_equal Date.new(2006, 7, 31), Month.end_of_month(7, 2006)
    assert_equal Date.new(2006, 8, 31), Month.end_of_month(8, 2006)
    assert_equal Date.new(2006, 9, 30), Month.end_of_month(9, 2006)
    assert_equal Date.new(2006, 10, 31), Month.end_of_month(10, 2006)
    assert_equal Date.new(2006, 11, 30), Month.end_of_month(11, 2006)
    assert_equal Date.new(2006, 12, 31), Month.end_of_month(12, 2006)
  end
  
end

# tc_Month_finish

# 20110702
# 0.7.0

require 'date'
require 'Month/finish'

class TC_Month_self_finish < Test::Unit::TestCase
  
  def test_self_finish
    assert_equal Date.new(2006, 1, 31), Month.new(1, 2006).finish
    assert_equal Date.new(2006, 2, 28), Month.new(2, 2006).finish
    assert_equal Date.new(2008, 2, 29), Month.new(2, 2008).finish
    assert_equal Date.new(2006, 3, 31), Month.new(3, 2006).finish
    assert_equal Date.new(2006, 4, 30), Month.new(4, 2006).finish
    assert_equal Date.new(2006, 5, 31), Month.new(5, 2006).finish
    assert_equal Date.new(2006, 6, 30), Month.new(6, 2006).finish
    assert_equal Date.new(2006, 7, 31), Month.new(7, 2006).finish
    assert_equal Date.new(2006, 8, 31), Month.new(8, 2006).finish
    assert_equal Date.new(2006, 9, 30), Month.new(9, 2006).finish
    assert_equal Date.new(2006, 10, 31), Month.new(10, 2006).finish
    assert_equal Date.new(2006, 11, 30), Month.new(11, 2006).finish
    assert_equal Date.new(2006, 12, 31), Month.new(12, 2006).finish
  end
  
end

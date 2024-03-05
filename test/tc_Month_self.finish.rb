# tc_Month_self.finish

# 20110702
# 0.7.0

require 'date'
require 'Month/self.finish'

class TC_Month_self_finish < Test::Unit::TestCase
  
  def test_self_finish
    assert_equal Date.new(2006, 1, 31), Month.finish(1, 2006)
    assert_equal Date.new(2006, 2, 28), Month.finish(2, 2006)
    assert_equal Date.new(2008, 2, 29), Month.finish(2, 2008)
    assert_equal Date.new(2006, 3, 31), Month.finish(3, 2006)
    assert_equal Date.new(2006, 4, 30), Month.finish(4, 2006)
    assert_equal Date.new(2006, 5, 31), Month.finish(5, 2006)
    assert_equal Date.new(2006, 6, 30), Month.finish(6, 2006)
    assert_equal Date.new(2006, 7, 31), Month.finish(7, 2006)
    assert_equal Date.new(2006, 8, 31), Month.finish(8, 2006)
    assert_equal Date.new(2006, 9, 30), Month.finish(9, 2006)
    assert_equal Date.new(2006, 10, 31), Month.finish(10, 2006)
    assert_equal Date.new(2006, 11, 30), Month.finish(11, 2006)
    assert_equal Date.new(2006, 12, 31), Month.finish(12, 2006)
  end
  
end

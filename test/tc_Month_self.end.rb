# tc_Month_self.end

# 20110707
# 0.8.0

require 'date'
require 'Month/self.end'

class TC_Month_self_end < Test::Unit::TestCase
  
  def test_self_end
    assert_equal Date.new(2006, 1, 31), Month.end(1, 2006)
    assert_equal Date.new(2006, 2, 28), Month.end(2, 2006)
    assert_equal Date.new(2008, 2, 29), Month.end(2, 2008)
    assert_equal Date.new(2006, 3, 31), Month.end(3, 2006)
    assert_equal Date.new(2006, 4, 30), Month.end(4, 2006)
    assert_equal Date.new(2006, 5, 31), Month.end(5, 2006)
    assert_equal Date.new(2006, 6, 30), Month.end(6, 2006)
    assert_equal Date.new(2006, 7, 31), Month.end(7, 2006)
    assert_equal Date.new(2006, 8, 31), Month.end(8, 2006)
    assert_equal Date.new(2006, 9, 30), Month.end(9, 2006)
    assert_equal Date.new(2006, 10, 31), Month.end(10, 2006)
    assert_equal Date.new(2006, 11, 30), Month.end(11, 2006)
    assert_equal Date.new(2006, 12, 31), Month.end(12, 2006)
  end
  
end

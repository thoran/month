# tc_Month_self.finish_date

# 20110707
# 0.8.0

require 'date'
require 'Month/self.finish_date'

class TC_Month_self_finish_date < Test::Unit::TestCase
  
  def test_self_finish_date
    assert_equal Date.new(2006, 1, 31), Month.finish_date(1, 2006)
    assert_equal Date.new(2006, 2, 28), Month.finish_date(2, 2006)
    assert_equal Date.new(2008, 2, 29), Month.finish_date(2, 2008)
    assert_equal Date.new(2006, 3, 31), Month.finish_date(3, 2006)
    assert_equal Date.new(2006, 4, 30), Month.finish_date(4, 2006)
    assert_equal Date.new(2006, 5, 31), Month.finish_date(5, 2006)
    assert_equal Date.new(2006, 6, 30), Month.finish_date(6, 2006)
    assert_equal Date.new(2006, 7, 31), Month.finish_date(7, 2006)
    assert_equal Date.new(2006, 8, 31), Month.finish_date(8, 2006)
    assert_equal Date.new(2006, 9, 30), Month.finish_date(9, 2006)
    assert_equal Date.new(2006, 10, 31), Month.finish_date(10, 2006)
    assert_equal Date.new(2006, 11, 30), Month.finish_date(11, 2006)
    assert_equal Date.new(2006, 12, 31), Month.finish_date(12, 2006)
  end
  
end

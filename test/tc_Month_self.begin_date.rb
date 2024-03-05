# tc_Month_self.begin_date

# 20110706
# 0.8.0

require 'date'
require 'Month/self.begin_date'

class TC_Month_self_begin_date < Test::Unit::TestCase
  
  def test_self_begin_date
    assert_equal Date.new(2006, 1, 1), Month.begin_date(1, 2006)
    assert_equal Date.new(2006, 2, 1), Month.begin_date(2, 2006)
    assert_equal Date.new(2008, 2, 1), Month.begin_date(2, 2008)
    assert_equal Date.new(2006, 3, 1), Month.begin_date(3, 2006)
    assert_equal Date.new(2006, 4, 1), Month.begin_date(4, 2006)
    assert_equal Date.new(2006, 5, 1), Month.begin_date(5, 2006)
    assert_equal Date.new(2006, 6, 1), Month.begin_date(6, 2006)
    assert_equal Date.new(2006, 7, 1), Month.begin_date(7, 2006)
    assert_equal Date.new(2006, 8, 1), Month.begin_date(8, 2006)
    assert_equal Date.new(2006, 9, 1), Month.begin_date(9, 2006)
    assert_equal Date.new(2006, 10, 1), Month.begin_date(10, 2006)
    assert_equal Date.new(2006, 11, 1), Month.begin_date(11, 2006)
    assert_equal Date.new(2006, 12, 1), Month.begin_date(12, 2006)
  end
  
end

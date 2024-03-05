# tc_Month_start_of_month

# 20110706
# 0.8.0

require 'date'
require 'Month'
require 'Month/start_of_month'

class TC_Month_start_of_month < Test::Unit::TestCase
  
  def test_start_of_month
    assert_equal Date.new(2006, 1, 1), Month.new(1, 2006).start_of_month
    assert_equal Date.new(2006, 2, 1), Month.new(2, 2006).start_of_month
    assert_equal Date.new(2008, 2, 1), Month.new(2, 2008).start_of_month
    assert_equal Date.new(2006, 3, 1), Month.new(3, 2006).start_of_month
    assert_equal Date.new(2006, 4, 1), Month.new(4, 2006).start_of_month
    assert_equal Date.new(2006, 5, 1), Month.new(5, 2006).start_of_month
    assert_equal Date.new(2006, 6, 1), Month.new(6, 2006).start_of_month
    assert_equal Date.new(2006, 7, 1), Month.new(7, 2006).start_of_month
    assert_equal Date.new(2006, 8, 1), Month.new(8, 2006).start_of_month
    assert_equal Date.new(2006, 9, 1), Month.new(9, 2006).start_of_month
    assert_equal Date.new(2006, 10, 1), Month.new(10, 2006).start_of_month
    assert_equal Date.new(2006, 11, 1), Month.new(11, 2006).start_of_month
    assert_equal Date.new(2006, 12, 1), Month.new(12, 2006).start_of_month
  end
  
end

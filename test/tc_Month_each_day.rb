# tc_Month_each_day

# 20110707
# 0.8.0

require 'Month'
require 'Month/each_day'

class TC_Month_each_day < Test::Unit::TestCase
  
  def test_each_day
    assert_equal 1..31, Month.new(1, 2006).each_day{}
    assert_equal 1..28, Month.new(2, 2006).each_day{}
    assert_equal 1..29, Month.new(2, 2008).each_day{}
    assert_equal 1..31, Month.new(3, 2006).each_day{}
    assert_equal 1..30, Month.new(4, 2006).each_day{}
    assert_equal 1..31, Month.new(5, 2006).each_day{}
    assert_equal 1..30, Month.new(6, 2006).each_day{}
    assert_equal 1..31, Month.new(7, 2006).each_day{}
    assert_equal 1..31, Month.new(8, 2006).each_day{}
    assert_equal 1..30, Month.new(9, 2006).each_day{}
    assert_equal 1..31, Month.new(10, 2006).each_day{}
    assert_equal 1..30, Month.new(11, 2006).each_day{}
    assert_equal 1..31, Month.new(12, 2006).each_day{}
  end
  
end

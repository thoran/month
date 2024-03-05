# tc_Month_days

# 20110702
# 0.7.0

require 'Month/days'

class TC_Month_days < Test::Unit::TestCase
  
  def test_days
    assert_equal 31, Month.new(1, 2006).days
    assert_equal 28, Month.new(2, 2006).days
    assert_equal 29, Month.new(2, 2008).days
    assert_equal 31, Month.new(3, 2006).days
    assert_equal 30, Month.new(4, 2006).days
    assert_equal 31, Month.new(5, 2006).days
    assert_equal 30, Month.new(6, 2006).days
    assert_equal 31, Month.new(7, 2006).days
    assert_equal 31, Month.new(8, 2006).days
    assert_equal 30, Month.new(9, 2006).days
    assert_equal 31, Month.new(10, 2006).days
    assert_equal 30, Month.new(11, 2006).days
    assert_equal 31, Month.new(12, 2006).days
  end
  
end

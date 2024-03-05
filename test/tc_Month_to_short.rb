# tc_Month_to_short

# 20110702
# 0.7.0

require 'Month'
require 'Month/to_short'

class TC_Month_to_short < Test::Unit::TestCase
  
  def test_to_short
    assert_equal 'Jan', Month.new(1, 2006).to_short
    assert_equal 'Feb', Month.new(2, 2006).to_short
    assert_equal 'Mar', Month.new(3, 2006).to_short
    assert_equal 'Apr', Month.new(4, 2006).to_short
    assert_equal 'May', Month.new(5, 2006).to_short
    assert_equal 'Jun', Month.new(6, 2006).to_short
    assert_equal 'Jul', Month.new(7, 2006).to_short
    assert_equal 'Aug', Month.new(8, 2006).to_short
    assert_equal 'Sep', Month.new(9, 2006).to_short
    assert_equal 'Oct', Month.new(10, 2006).to_short
    assert_equal 'Nov', Month.new(11, 2006).to_short
    assert_equal 'Dec', Month.new(12, 2006).to_short
  end
  
end

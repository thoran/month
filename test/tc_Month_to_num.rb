# tc_Month_to_num

# 20110707
# 0.8.0

require 'Month'
require 'Month/to_num'

class TC_Month_to_num < Test::Unit::TestCase
  
  def test_to_num
    assert_equal 1, Month.new(1, 2006).to_num
    assert_equal 2, Month.new(2, 2006).to_num
    assert_equal 3, Month.new(3, 2006).to_num
    assert_equal 4, Month.new(4, 2006).to_num
    assert_equal 5, Month.new(5, 2006).to_num
    assert_equal 6, Month.new(6, 2006).to_num
    assert_equal 7, Month.new(7, 2006).to_num
    assert_equal 8, Month.new(8, 2006).to_num
    assert_equal 9, Month.new(9, 2006).to_num
    assert_equal 10, Month.new(10, 2006).to_num
    assert_equal 11, Month.new(11, 2006).to_num
    assert_equal 12, Month.new(12, 2006).to_num
  end
  
end

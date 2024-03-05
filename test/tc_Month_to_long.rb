# tc_Month_to_long

# 20110702
# 0.7.0

require 'Month/to_long'

class TC_Month_to_long < Test::Unit::TestCase
  
  def test_to_long
    assert_equal 'January', Month.new(1, 2006).to_long
    assert_equal 'February', Month.new(2, 2006).to_long
    assert_equal 'March', Month.new(3, 2006).to_long
    assert_equal 'April', Month.new(4, 2006).to_long
    assert_equal 'May', Month.new(5, 2006).to_long
    assert_equal 'June', Month.new(6, 2006).to_long
    assert_equal 'July', Month.new(7, 2006).to_long
    assert_equal 'August', Month.new(8, 2006).to_long
    assert_equal 'September', Month.new(9, 2006).to_long
    assert_equal 'October', Month.new(10, 2006).to_long
    assert_equal 'November', Month.new(11, 2006).to_long
    assert_equal 'December', Month.new(12, 2006).to_long
  end
  
end

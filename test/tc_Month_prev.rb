# tc_Month_prev

# 20110705
# 0.8.0

require 'Month'
require 'Month/prev'

class TC_Month_prev < Test::Unit::TestCase
  
  def test_prev
    assert_equal Month.new(12, 2010), Month.new(1, 2011).prev
    assert_equal Month.new(11, 2011), Month.new(12, 2011).prev
    assert_equal Month.new(10, 2011), Month.new(11, 2011).prev
  end
  
end

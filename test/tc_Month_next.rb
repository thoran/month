# tc_Month_next

# 20110705
# 0.8.0

require 'Month'
require 'Month/next'

class TC_Month_next < Test::Unit::TestCase
  
  def test_next
    assert_equal Month.new(2, 2011), Month.new(1, 2011).next
    assert_equal Month.new(1, 2012), Month.new(12, 2011).next
    assert_equal Month.new(1, 2012), Month.new(12, 2011).next
    assert_equal Month.new(12, 2011), Month.new(11, 2011).next
  end
  
end

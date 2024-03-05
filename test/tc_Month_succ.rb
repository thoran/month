# tc_Month_succ

# 20110705
# 0.8.0

require 'Month'
require 'Month/succ'

class TC_Month_succ < Test::Unit::TestCase
  
  def test_succ
    assert_equal Month.new(2, 2011), Month.new(1, 2011).succ
    assert_equal Month.new(1, 2012), Month.new(12, 2011).succ
    assert_equal Month.new(12, 2012), Month.new(11, 2012).succ
  end
  
end

# tc_Month_minus

# 20110705
# 0.8.0

require 'Month'
require 'Month/minus'

class TC_Month_minus < Test::Unit::TestCase
  
  def test_minus
    assert_equal Month.new(9, 2010), Month.new(1, 2011) - 4
    assert_equal Month.new(11, 2011), Month.new(12, 2011) - 1
    assert_equal Month.new(9, 2011), Month.new(11, 2011) - 2
    assert_equal Month.new(11, 2010), Month.new(11, 2011) - 12
    assert_equal Month.new(11, 2009), Month.new(11, 2011) - 24
  end
  
end

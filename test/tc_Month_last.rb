# tc_Month_last

# 20110705
# 0.8.0

require 'Month'
require 'Month/last'

class TC_Month_plus < Test::Unit::TestCase
  
  def test_plus
    assert_equal Month.new(12, 2010), Month.new(1, 2011).last
    assert_equal Month.new(11, 2011), Month.new(12, 2011).last
    assert_equal Month.new(10, 2011), Month.new(11, 2011).last
  end
  
end

# tc_Month_plus

# 20110705
# 0.8.0

require 'Month'
require 'Month/plus'

class TC_Month_plus < Test::Unit::TestCase
  
  def test_plus
    assert_equal Month.new(5, 2011), Month.new(1, 2011) + 4
    assert_equal Month.new(1, 2012), Month.new(12, 2011) + 1
    assert_equal Month.new(1, 2012), Month.new(11, 2011) + 2
    assert_equal Month.new(11, 2012), Month.new(11, 2011) + 12
    assert_equal Month.new(11, 2013), Month.new(11, 2011) + 24
  end
  
end

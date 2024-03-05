# tc_Month_eqlQ

# 20110705
# 0.8.0

require 'Month'
require 'Month/eqlQ'

class TC_Month_eqlQ < Test::Unit::TestCase
  
  def test_eqlQ
    assert_equal true, Month.new(1, 2011).eql?(Month.new(1, 2011))
  end
  
end

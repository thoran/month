# tc_Month_prior

# 20110706
# 0.8.0

require 'Month'
require 'Month/prior'

class TC_Month_prior < Test::Unit::TestCase
  
  def test_prior
    assert_equal Month.new(12, 2010), Month.new(1, 2011).prior
    assert_equal Month.new(11, 2011), Month.new(12, 2011).prior
    assert_equal Month.new(10, 2011), Month.new(11, 2011).prior
  end
  
end

# tc_Month_previous

# 20110706
# 0.8.0

require 'Month'
require 'Month/previous'

class TC_Month_previous < Test::Unit::TestCase
  
  def test_previous
    assert_equal Month.new(12, 2010), Month.new(1, 2011).previous
    assert_equal Month.new(11, 2011), Month.new(12, 2011).previous
    assert_equal Month.new(10, 2011), Month.new(11, 2011).previous
  end
  
end

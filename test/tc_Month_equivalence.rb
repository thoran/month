# tc_Month_equivalence

# 20110702
# 0.7.0

require 'Month'
require 'Month/equivalence'

class TC_Month_equivalence < Test::Unit::TestCase
  
  def test_equivalence
    assert_equal true, Month.new(1, 2011) == Month.new(1, 2011)
  end
  
end

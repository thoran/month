# tc_Month_comparator

# 20110705
# 0.8.0

require 'Month'

class TC_Month_comparator < Test::Unit::TestCase
  
  def test_equivalence
    assert_equal true, Month.new(1, 2011) == Month.new(1, 2011)
  end
  
  def test_greater_than
    assert_equal true, Month.new(2, 2011) > Month.new(1, 2011)
  end
  
  def test_less_than
    assert_equal true, Month.new(1, 2011) < Month.new(2, 2011)
  end
  
end

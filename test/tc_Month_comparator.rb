# tc_Month_comparator

# 20110824
# 0.9.0

# Changes since 0.8
# 1. Reversed arguments for Month.new.  

class TC_Month_comparator < MiniTest::Unit::TestCase
  
  def test_equivalence
    assert_equal true, Month.new(2011, 1) == Month.new(2011, 1)
  end
  
  def test_greater_than
    assert_equal true, Month.new(2011, 2) > Month.new(2011, 1)
  end
  
  def test_less_than
    assert_equal true, Month.new(2011, 1) < Month.new(2011, 2)
  end
  
end

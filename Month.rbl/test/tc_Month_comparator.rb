# test/tc_Month_comparator.rb

class TC_Month_comparator < MiniTest::Test
  
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

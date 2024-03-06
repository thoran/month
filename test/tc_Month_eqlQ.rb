# test/tc_Month_eqlQ.rb

class TC_Month_eqlQ < Minitest::Test
  
  def test_eqlQ
    assert_equal true, Month.new(2011, 1).eql?(Month.new(2011, 1))
  end
  
  def test_equal_literal
    assert_equal true, Month.new(2011, 1) == Month.new(2011, 1)
  end
  
end

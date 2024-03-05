# test/tc_Month_minus.rb

class TC_Month_minus < MiniTest::Test
  
  def test_minus_method
    assert_equal Month.new(2010, 9), Month.new(2011, 1).minus(4)
    assert_equal Month.new(2011, 11), Month.new(2011, 12).minus(1)
    assert_equal Month.new(2011, 9), Month.new(2011, 11).minus(2)
    assert_equal Month.new(2010, 11), Month.new(2011, 11).minus(12)
    assert_equal Month.new(2009, 11), Month.new(2011, 11).minus(24)
    assert_equal Month.new(2010, 12), Month.new(2011, 1).minus(1)
  end
  
  def test_minus_literal
    assert_equal Month.new(2010, 9), Month.new(2011, 1) - 4
    assert_equal Month.new(2011, 11), Month.new(2011, 12) - 1
    assert_equal Month.new(2011, 9), Month.new(2011, 11) - 2
    assert_equal Month.new(2010, 11), Month.new(2011, 11) - 12
    assert_equal Month.new(2009, 11), Month.new(2011, 11) - 24
    assert_equal Month.new(2010, 12), Month.new(2011, 1) - 1
  end
  
end

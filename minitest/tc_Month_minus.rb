# tc_Month_minus

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. 
# 0/1
# 2. + A test for something which failed in irb.  

class TC_Month_minus < MiniTest::Unit::TestCase
  
  def test_minus
    assert_equal Month.new(2010, 9), Month.new(2011, 1) - 4
    assert_equal Month.new(2011, 11), Month.new(2011, 12) - 1
    assert_equal Month.new(2011, 9), Month.new(2011, 11) - 2
    assert_equal Month.new(2010, 11), Month.new(2011, 11) - 12
    assert_equal Month.new(2009, 11), Month.new(2011, 11) - 24
    assert_equal Month.new(2010, 12), Month.new(2011, 1) - 1
  end
  
end

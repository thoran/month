# tc_Month_minus

# 20110824
# 0.9.0

class TC_Month_minus < Test::Unit::TestCase
  
  def test_minus
    assert_equal Month.new(2010, 9), Month.new(2011, 1) - 4
    assert_equal Month.new(2011, 11), Month.new(2011, 12) - 1
    assert_equal Month.new(2011, 9), Month.new(2011, 11) - 2
    assert_equal Month.new(2010, 11), Month.new(2011, 11) - 12
    assert_equal Month.new(2009, 11), Month.new(2011, 11) - 24
  end
  
end

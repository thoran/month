# tc_Month_eqlQ

# 20110824
# 0.9.0

# Changes since 0.8
# 1. Reversed arguments for Month.new.  

class TC_Month_eqlQ < MiniTest::Unit::TestCase
  
  def test_eqlQ
    assert_equal true, Month.new(2011, 1).eql?(Month.new(2011, 1))
  end
  
end

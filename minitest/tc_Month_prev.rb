# tc_Month_prev

# 20110824
# 0.9.0

class TC_Month_prev < MiniTest::Unit::TestCase
  
  def test_prev
    assert_equal Month.new(2010, 12), Month.new(2011, 1).prev
    assert_equal Month.new(2011, 11), Month.new(2011, 12).prev
    assert_equal Month.new(2011, 10), Month.new(2011, 11).prev
  end
  
end

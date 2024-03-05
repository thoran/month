# tc_Month_next

# 20110824
# 0.9.0

class TC_Month_next < MiniTest::Unit::TestCase
  
  def test_next
    assert_equal Month.new(2011, 2), Month.new(2011, 1).next
    assert_equal Month.new(2012, 1), Month.new(2011, 12).next
    assert_equal Month.new(2012, 1), Month.new(2011, 12).next
    assert_equal Month.new(2011, 12), Month.new(2011, 11).next
  end
  
end

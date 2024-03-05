# tc_Month_last_month

# 20111203
# 0.9.1

class TC_Month_last_month < MiniTest::Unit::TestCase
  
  def test_plus
    assert_equal Month.new(2010, 12), Month.new(2011, 1).last_month
    assert_equal Month.new(2011, 11), Month.new(2011, 12).last_month
    assert_equal Month.new(2011, 10), Month.new(2011, 11).last_month
  end
  
end

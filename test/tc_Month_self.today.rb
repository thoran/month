# tc_Month_self.today

# 20110824
# 0.9.0

class TC_Month_self_today < Test::Unit::TestCase
  
  def test_self_today
    assert_equal Date.today, Month.today
  end
  
end

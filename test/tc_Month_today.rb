# tc_Month_today

# 20110824
# 0.9.0

class TC_Month_today < Test::Unit::TestCase
    
  def test_today
    assert_equal Date.today, Month.new.today
  end
  
end

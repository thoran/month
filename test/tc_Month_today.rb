# tc_Month_today

# 20110824, 25
# 0.9.0

class TC_Month_today < MiniTest::Unit::TestCase
    
  def test_today
    assert_equal Month.new(Date.today.year, Date.today.month), Month.new.today
  end
  
end

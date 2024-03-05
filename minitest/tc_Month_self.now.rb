# tc_Month_self.now

# 20111204
# 0.9.1

class TC_Month_today < MiniTest::Unit::TestCase
    
  def test_self_now
    assert_equal Month.new(Date.today.year, Date.today.month), Month.now
  end
  
end

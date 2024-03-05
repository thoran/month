# test/tc_Month_self.now.rb

class TC_Month_today < MiniTest::Test
    
  def test_self_now
    assert_equal Month.new(Date.today.year, Date.today.month), Month.now
  end
  
end

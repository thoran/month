# test/tc_Month_self.today.rb

class TC_Month_self_today < MiniTest::Test
  
  def test_self_today
    assert_equal Month.new(Date.today.year, Date.today.month), Month.today
  end
  
end

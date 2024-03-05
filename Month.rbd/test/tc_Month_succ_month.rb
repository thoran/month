# test/tc_Month_succ_month.rb

class TC_Month_succ_month < MiniTest::Test
  
  def test_succ_month
    assert_equal Month.new(2011, 2), Month.new(2011, 1).succ_month
    assert_equal Month.new(2012, 1), Month.new(2011, 12).succ_month
    assert_equal Month.new(2012, 12), Month.new(2012, 11).succ_month
  end
  
end

# test/tc_Month_last_month.rb

class TC_Month_last_month < MiniTest::Test
  
  def test_plus
    assert_equal Month.new(2010, 12), Month.new(2011, 1).last_month
    assert_equal Month.new(2011, 11), Month.new(2011, 12).last_month
    assert_equal Month.new(2011, 10), Month.new(2011, 11).last_month
  end
  
end

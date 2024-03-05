# test/tc_Month_next_month.rb

class TC_Month_next_month < MiniTest::Test
  
  def test_next_month
    assert_equal Month.new(2011, 2), Month.new(2011, 1).next_month
    assert_equal Month.new(2012, 1), Month.new(2011, 12).next_month
    assert_equal Month.new(2012, 1), Month.new(2011, 12).next_month
    assert_equal Month.new(2011, 12), Month.new(2011, 11).next_month
  end
  
end

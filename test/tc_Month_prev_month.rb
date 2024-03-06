# test/tc_Month_prev_month.rb

class TC_Month_prev_month < Minitest::Test
  
  def test_prev_month
    assert_equal Month.new(2010, 12), Month.new(2011, 1).prev_month
    assert_equal Month.new(2011, 11), Month.new(2011, 12).prev_month
    assert_equal Month.new(2011, 10), Month.new(2011, 11).prev_month
  end
  
end

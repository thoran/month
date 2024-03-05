# test/tc_Month_prior_month.rb

class TC_Month_prior_month < MiniTest::Test
  
  def test_prior_month
    assert_equal Month.new(2010, 12), Month.new(2011, 1).prior_month
    assert_equal Month.new(2011, 11), Month.new(2011, 12).prior_month
    assert_equal Month.new(2011, 10), Month.new(2011, 11).prior_month
  end
  
end

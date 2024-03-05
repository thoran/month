# test/tc_Month_days_in_month.rb

class TC_Month_days_in_month < MiniTest::Test
  
  def test_days_in_month
    assert_equal 31, Month.new(2006, 1).days_in_month
    assert_equal 28, Month.new(2006, 2).days_in_month
    assert_equal 29, Month.new(2008, 2).days_in_month
    assert_equal 31, Month.new(2006, 3).days_in_month
    assert_equal 30, Month.new(2006, 4).days_in_month
    assert_equal 31, Month.new(2006, 5).days_in_month
    assert_equal 30, Month.new(2006, 6).days_in_month
    assert_equal 31, Month.new(2006, 7).days_in_month
    assert_equal 31, Month.new(2006, 8).days_in_month
    assert_equal 30, Month.new(2006, 9).days_in_month
    assert_equal 31, Month.new(2006, 10).days_in_month
    assert_equal 30, Month.new(2006, 11).days_in_month
    assert_equal 31, Month.new(2006, 12).days_in_month
  end
  
end

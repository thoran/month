# tc_Month_to_date

# 20110825
# 0.9.0

class TC_Month_to_date < Test::Unit::TestCase
  
  def test_plus
    assert_equal Date.new(2010, 12, 1).year, Month.new(2010, 12).to_date.year
    assert_equal Date.new(2010, 12, 1).month, Month.new(2010, 12).to_date.month
    assert_equal Date.new(2010, 12, 1).day, Month.new(2010, 12).to_date.day
    assert_equal Date.new(2011, 11, 1).year, Month.new(2011, 11).to_date.year
    assert_equal Date.new(2011, 11, 1).month, Month.new(2011, 11).to_date.month
    assert_equal Date.new(2011, 11, 1).day, Month.new(2011, 11).to_date.day
    assert_equal Date.new(2011, 10, 1).year, Month.new(2011, 10).to_date.year
    assert_equal Date.new(2011, 10, 1).month, Month.new(2011, 10).to_date.month
    assert_equal Date.new(2011, 10, 1).day, Month.new(2011, 10).to_date.day
  end
  
end

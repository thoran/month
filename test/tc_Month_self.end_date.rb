# tc_Month_self.end_date

# 20110824
# 0.9.0

class TC_Month_self_end_date < Test::Unit::TestCase
  
  def test_self_end_date
    assert_equal Date.new(2006, 1, 31), Month.end_date(1, 2006)
    assert_equal Date.new(2006, 2, 28), Month.end_date(2, 2006)
    assert_equal Date.new(2008, 2, 29), Month.end_date(2, 2008)
    assert_equal Date.new(2006, 3, 31), Month.end_date(3, 2006)
    assert_equal Date.new(2006, 4, 30), Month.end_date(4, 2006)
    assert_equal Date.new(2006, 5, 31), Month.end_date(5, 2006)
    assert_equal Date.new(2006, 6, 30), Month.end_date(6, 2006)
    assert_equal Date.new(2006, 7, 31), Month.end_date(7, 2006)
    assert_equal Date.new(2006, 8, 31), Month.end_date(8, 2006)
    assert_equal Date.new(2006, 9, 30), Month.end_date(9, 2006)
    assert_equal Date.new(2006, 10, 31), Month.end_date(10, 2006)
    assert_equal Date.new(2006, 11, 30), Month.end_date(11, 2006)
    assert_equal Date.new(2006, 12, 31), Month.end_date(12, 2006)
  end
  
end

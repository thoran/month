# tc_Month_self.date

# 20110824
# 0.9.0

class TC_Month_self_date < Test::Unit::TestCase
  
  def test_self_date
    assert_equal 3, Month.date('First', 'Monday', 1, 2011)
    assert_equal 14, Month.date('Second', 'Monday', 2, 2011)
    assert_equal 21, Month.date('Third', 'Monday', 3, 2011)
    assert_equal 25, Month.date('Fourth', 'Monday', 4, 2011)
    assert_equal 30, Month.date('Fifth', 'Monday', 5, 2011)
    assert_equal 27, Month.date('Last', 'Monday', 6, 2011)
    assert_equal 18, Month.date('Second Last', 'Monday', 7, 2011)
    assert_equal 15, Month.date('Third Last', 'Monday', 8, 2011)
    assert_equal 5, Month.date('Fourth Last', 'Monday', 9, 2011)
    assert_equal 2, Month.date('First', 'Sunday', 1, 2011)
    assert_equal 13, Month.date('Second', 'Sunday', 2, 2011)
    assert_equal 20, Month.date('Third', 'Sunday', 3, 2011)
    assert_equal 24, Month.date('Fourth', 'Sunday', 4, 2011)
    assert_equal 29, Month.date('Fifth', 'Sunday', 5, 2011)
    assert_equal 26, Month.date('Last', 'Sunday', 6, 2011)
    assert_equal 24, Month.date('Second Last', 'Sunday', 7, 2011)
    assert_equal 14, Month.date('Third Last', 'Sunday', 8, 2011)
    assert_equal 4, Month.date('Fourth Last', 'Sunday', 9, 2011)
  end
  
end

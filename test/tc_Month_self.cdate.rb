# tc_Month_self.cdate

# 20110707
# 0.8.0

require 'Month/self.cdate'

class TC_Month_self_cdate < Test::Unit::TestCase
  
  def test_self_cdate
    assert_equal 3, Month.cdate('First', 'Monday', 1, 2011)
    assert_equal 14, Month.cdate('Second', 'Monday', 2, 2011)
    assert_equal 21, Month.cdate('Third', 'Monday', 3, 2011)
    assert_equal 25, Month.cdate('Fourth', 'Monday', 4, 2011)
    assert_equal 30, Month.cdate('Fifth', 'Monday', 5, 2011)
    assert_equal 27, Month.cdate('Last', 'Monday', 6, 2011)
    assert_equal 18, Month.cdate('Second Last', 'Monday', 7, 2011)
    assert_equal 15, Month.cdate('Third Last', 'Monday', 8, 2011)
    assert_equal 5, Month.cdate('Fourth Last', 'Monday', 9, 2011)
    assert_equal 2, Month.cdate('First', 'Sunday', 1, 2011)
    assert_equal 13, Month.cdate('Second', 'Sunday', 2, 2011)
    assert_equal 20, Month.cdate('Third', 'Sunday', 3, 2011)
    assert_equal 24, Month.cdate('Fourth', 'Sunday', 4, 2011)
    assert_equal 29, Month.cdate('Fifth', 'Sunday', 5, 2011)
    assert_equal 26, Month.cdate('Last', 'Sunday', 6, 2011)
    assert_equal 24, Month.cdate('Second Last', 'Sunday', 7, 2011)
    assert_equal 14, Month.cdate('Third Last', 'Sunday', 8, 2011)
    assert_equal 4, Month.cdate('Fourth Last', 'Sunday', 9, 2011)
  end
  
end

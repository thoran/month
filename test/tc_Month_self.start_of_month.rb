# tc_Month_self.start_of_month

# 20110824
# 0.9.0

class TC_Month_self_start_of_month < Test::Unit::TestCase
  
  def test_self_start_of_month
    assert_equal Date.new(2006, 1, 1), Month.start_of_month(1, 2006)
    assert_equal Date.new(2006, 2, 1), Month.start_of_month(2, 2006)
    assert_equal Date.new(2008, 2, 1), Month.start_of_month(2, 2008)
    assert_equal Date.new(2006, 3, 1), Month.start_of_month(3, 2006)
    assert_equal Date.new(2006, 4, 1), Month.start_of_month(4, 2006)
    assert_equal Date.new(2006, 5, 1), Month.start_of_month(5, 2006)
    assert_equal Date.new(2006, 6, 1), Month.start_of_month(6, 2006)
    assert_equal Date.new(2006, 7, 1), Month.start_of_month(7, 2006)
    assert_equal Date.new(2006, 8, 1), Month.start_of_month(8, 2006)
    assert_equal Date.new(2006, 9, 1), Month.start_of_month(9, 2006)
    assert_equal Date.new(2006, 10, 1), Month.start_of_month(10, 2006)
    assert_equal Date.new(2006, 11, 1), Month.start_of_month(11, 2006)
    assert_equal Date.new(2006, 12, 1), Month.start_of_month(12, 2006)
  end
  
end

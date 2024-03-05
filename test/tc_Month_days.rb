# tc_Month_days

# 20110824
# 0.9.0

# Changes since 0.8
# 1. Reversed arguments for Month.new.  

class TC_Month_days < Test::Unit::TestCase
  
  def test_days
    assert_equal 31, Month.new(2006, 1).days
    assert_equal 28, Month.new(2006, 2).days
    assert_equal 29, Month.new(2008, 2).days
    assert_equal 31, Month.new(2006, 3).days
    assert_equal 30, Month.new(2006, 4).days
    assert_equal 31, Month.new(2006, 5).days
    assert_equal 30, Month.new(2006, 6).days
    assert_equal 31, Month.new(2006, 7).days
    assert_equal 31, Month.new(2006, 8).days
    assert_equal 30, Month.new(2006, 9).days
    assert_equal 31, Month.new(2006, 10).days
    assert_equal 30, Month.new(2006, 11).days
    assert_equal 31, Month.new(2006, 12).days
  end
  
end

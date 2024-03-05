# tc_Month_beginning

# 20110824
# 0.9.0

# Changes since 0.8
# 1. Reversed arguments for Month.new.  

class TC_Month_beginning < Test::Unit::TestCase
  
  def test_beginning
    assert_equal Date.new(2006, 1, 1), Month.new(2006, 1).beginning
    assert_equal Date.new(2006, 2, 1), Month.new(2006, 2).beginning
    assert_equal Date.new(2008, 2, 1), Month.new(2008, 2).beginning
    assert_equal Date.new(2006, 3, 1), Month.new(2006, 3).beginning
    assert_equal Date.new(2006, 4, 1), Month.new(2006, 4).beginning
    assert_equal Date.new(2006, 5, 1), Month.new(2006, 5).beginning
    assert_equal Date.new(2006, 6, 1), Month.new(2006, 6).beginning
    assert_equal Date.new(2006, 7, 1), Month.new(2006, 7).beginning
    assert_equal Date.new(2006, 8, 1), Month.new(2006, 8).beginning
    assert_equal Date.new(2006, 9, 1), Month.new(2006, 9).beginning
    assert_equal Date.new(2006, 10, 1), Month.new(2006, 10).beginning
    assert_equal Date.new(2006, 11, 1), Month.new(2006, 11).beginning
    assert_equal Date.new(2006, 12, 1), Month.new(2006, 12).beginning
  end
  
end

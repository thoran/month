# tc_Month_self.start_of_the_month

# 20111204
# 0.9.1

# Changes: 
# 1. 

class TC_Month_self_start_of_the_month < MiniTest::Unit::TestCase
  
  def test_self_start_of_the_month
    assert_equal Date.new(2006, 1, 1), Month.start_of_the_month(2006, 1)
    assert_equal Date.new(2006, 2, 1), Month.start_of_the_month(2006, 2)
    assert_equal Date.new(2008, 2, 1), Month.start_of_the_month(2008, 2)
    assert_equal Date.new(2006, 3, 1), Month.start_of_the_month(2006, 3)
    assert_equal Date.new(2006, 4, 1), Month.start_of_the_month(2006, 4)
    assert_equal Date.new(2006, 5, 1), Month.start_of_the_month(2006, 5)
    assert_equal Date.new(2006, 6, 1), Month.start_of_the_month(2006, 6)
    assert_equal Date.new(2006, 7, 1), Month.start_of_the_month(2006, 7)
    assert_equal Date.new(2006, 8, 1), Month.start_of_the_month(2006, 8)
    assert_equal Date.new(2006, 9, 1), Month.start_of_the_month(2006, 9)
    assert_equal Date.new(2006, 10, 1), Month.start_of_the_month(2006, 10)
    assert_equal Date.new(2006, 11, 1), Month.start_of_the_month(2006, 11)
    assert_equal Date.new(2006, 12, 1), Month.start_of_the_month(2006, 12)
  end
  
end

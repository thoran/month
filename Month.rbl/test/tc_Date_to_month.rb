# test/tc_Month_begin_date.rb

class TC_Date_to_month < MiniTest::Test
  
  def test_Date_to_month
    assert_equal Date.new(2006, 1, 1).to_month, Month.new(2006, 1)
    assert_equal Date.new(2006, 2, 1).to_month, Month.new(2006, 2)
    assert_equal Date.new(2008, 2, 1).to_month, Month.new(2008, 2)
    assert_equal Date.new(2006, 3, 1).to_month, Month.new(2006, 3)
    assert_equal Date.new(2006, 4, 1).to_month, Month.new(2006, 4)
    assert_equal Date.new(2006, 5, 1).to_month, Month.new(2006, 5)
    assert_equal Date.new(2006, 6, 1).to_month, Month.new(2006, 6)
    assert_equal Date.new(2006, 7, 1).to_month, Month.new(2006, 7)
    assert_equal Date.new(2006, 8, 1).to_month, Month.new(2006, 8)
    assert_equal Date.new(2006, 9, 1).to_month, Month.new(2006, 9)
    assert_equal Date.new(2006, 10, 1).to_month, Month.new(2006, 10)
    assert_equal Date.new(2006, 11, 1).to_month, Month.new(2006, 11)
    assert_equal Date.new(2006, 12, 1).to_month, Month.new(2006, 12)
  end
  
end

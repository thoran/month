# test/tc_Month_self.start_date.rb

class TC_Month_self_start_date < Minitest::Test
  
  def test_self_start_date
    assert_equal Date.new(2006, 1, 1), Month.start_date(2006, 1)
    assert_equal Date.new(2006, 2, 1), Month.start_date(2006, 2)
    assert_equal Date.new(2008, 2, 1), Month.start_date(2008, 2)
    assert_equal Date.new(2006, 3, 1), Month.start_date(2006, 3)
    assert_equal Date.new(2006, 4, 1), Month.start_date(2006, 4)
    assert_equal Date.new(2006, 5, 1), Month.start_date(2006, 5)
    assert_equal Date.new(2006, 6, 1), Month.start_date(2006, 6)
    assert_equal Date.new(2006, 7, 1), Month.start_date(2006, 7)
    assert_equal Date.new(2006, 8, 1), Month.start_date(2006, 8)
    assert_equal Date.new(2006, 9, 1), Month.start_date(2006, 9)
    assert_equal Date.new(2006, 10, 1), Month.start_date(2006, 10)
    assert_equal Date.new(2006, 11, 1), Month.start_date(2006, 11)
    assert_equal Date.new(2006, 12, 1), Month.start_date(2006, 12)
  end
  
end

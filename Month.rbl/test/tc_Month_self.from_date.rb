# test/tc_Month_self.from_date.rb

class TC_Month_self_start_date < MiniTest::Test
  
  def test_self_from_date
    assert_equal Month.new(2006, 1), Month.from_date(Date.new(2006, 1, 1))
    assert_equal Month.new(2006, 2), Month.from_date(Date.new(2006, 2, 1))
    assert_equal Month.new(2008, 2), Month.from_date(Date.new(2008, 2, 1))
    assert_equal Month.new(2006, 3), Month.from_date(Date.new(2006, 3, 1))
    assert_equal Month.new(2006, 4), Month.from_date(Date.new(2006, 4, 1))
    assert_equal Month.new(2006, 5), Month.from_date(Date.new(2006, 5, 1))
    assert_equal Month.new(2006, 6), Month.from_date(Date.new(2006, 6, 1))
    assert_equal Month.new(2006, 7), Month.from_date(Date.new(2006, 7, 1))
    assert_equal Month.new(2006, 8), Month.from_date(Date.new(2006, 8, 1))
    assert_equal Month.new(2006, 9), Month.from_date(Date.new(2006, 9, 1))
    assert_equal Month.new(2006, 10), Month.from_date(Date.new(2006, 10, 1))
    assert_equal Month.new(2006, 11), Month.from_date(Date.new(2006, 11, 1))
    assert_equal Month.new(2006, 12), Month.from_date(Date.new(2006, 12, 1))
  end
  
end

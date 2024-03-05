# tc_Month_self.start

# 20110824
# 0.9.0

class TC_Month_self_start < MiniTest::Unit::TestCase
  
  def test_self_start
    assert_equal Date.new(2006, 1, 1), Month.start(1, 2006)
    assert_equal Date.new(2006, 2, 1), Month.start(2, 2006)
    assert_equal Date.new(2008, 2, 1), Month.start(2, 2008)
    assert_equal Date.new(2006, 3, 1), Month.start(3, 2006)
    assert_equal Date.new(2006, 4, 1), Month.start(4, 2006)
    assert_equal Date.new(2006, 5, 1), Month.start(5, 2006)
    assert_equal Date.new(2006, 6, 1), Month.start(6, 2006)
    assert_equal Date.new(2006, 7, 1), Month.start(7, 2006)
    assert_equal Date.new(2006, 8, 1), Month.start(8, 2006)
    assert_equal Date.new(2006, 9, 1), Month.start(9, 2006)
    assert_equal Date.new(2006, 10, 1), Month.start(10, 2006)
    assert_equal Date.new(2006, 11, 1), Month.start(11, 2006)
    assert_equal Date.new(2006, 12, 1), Month.start(12, 2006)
  end
  
end

# tc_Month_successor

# 20111203, 4
# 0.9.1

class TC_Month_successor < MiniTest::Unit::TestCase
  
  def test_successor
    assert_equal Month.new(2011, 2), Month.new(2011, 1).successor
    assert_equal Month.new(2012, 1), Month.new(2011, 12).successor
    assert_equal Month.new(2012, 12), Month.new(2012, 11).successor
  end
  
end

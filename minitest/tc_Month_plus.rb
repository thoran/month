# tc_Month_plus

# 20111204
# 0.9.1

class TC_Month_plus < MiniTest::Unit::TestCase
  
  def test_plus
    assert_equal Month.new(2011, 5), Month.new(2011, 1) + 4
    assert_equal Month.new(2012, 1), Month.new(2011, 12) + 1
    assert_equal Month.new(2012, 1), Month.new(2011, 11) + 2
    assert_equal Month.new(2012, 11), Month.new(2011, 11) + 12
    assert_equal Month.new(2013, 11), Month.new(2011, 11) + 24
    assert_equal Month.new(2011, 1), Month.new(2010, 12) + 1
  end
  
end

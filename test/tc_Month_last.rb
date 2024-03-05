# tc_Month_last

# 20110824
# 0.9.0

class TC_Month_plus < Test::Unit::TestCase
  
  def test_plus
    assert_equal Month.new(2010, 12), Month.new(2011, 1).last
    assert_equal Month.new(2011, 11), Month.new(2011, 12).last
    assert_equal Month.new(2011, 10), Month.new(2011, 11).last
  end
  
end

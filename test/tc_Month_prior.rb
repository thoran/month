# tc_Month_prior

# 20110824
# 0.9.0

class TC_Month_prior < MiniTest::Unit::TestCase
  
  def test_prior
    assert_equal Month.new(2010, 12), Month.new(2011, 1).prior
    assert_equal Month.new(2011, 11), Month.new(2011, 12).prior
    assert_equal Month.new(2011, 10), Month.new(2011, 11).prior
  end
  
end

# tc_Month_previous

# 20110824
# 0.9.0

class TC_Month_previous < Test::Unit::TestCase
  
  def test_previous
    assert_equal Month.new(2010, 12), Month.new(2011, 1).previous
    assert_equal Month.new(2011, 11), Month.new(2011, 12).previous
    assert_equal Month.new(2011, 10), Month.new(2011, 11).previous
  end
  
end

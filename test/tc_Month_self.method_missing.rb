# tc_Month_self.method_missing

# 20110824
# 0.9.0

class TC_Month_self_method_missing < Test::Unit::TestCase
  
  def test_self_method_missing
    assert_equal Month.new(1).month, Month.january.month
    assert_equal Month.new(1).year, Month.january.year
    assert_equal Month.new(2).month, Month.february.month
    assert_equal Month.new(2).year, Month.february.year
    assert_equal Month.new(3).month, Month.march.month
    assert_equal Month.new(3).year, Month.march.year
    assert_equal Month.new(4).month, Month.april.month
    assert_equal Month.new(4).year, Month.april.year
    assert_equal Month.new(5).month, Month.may.month
    assert_equal Month.new(5).year, Month.may.year
    assert_equal Month.new(6).month, Month.june.month
    assert_equal Month.new(6).year, Month.june.year
    assert_equal Month.new(7).month, Month.july.month
    assert_equal Month.new(7).year, Month.july.year
    assert_equal Month.new(8).month, Month.august.month
    assert_equal Month.new(8).year, Month.august.year
    assert_equal Month.new(9).month, Month.september.month
    assert_equal Month.new(9).year, Month.september.year
    assert_equal Month.new(10).month, Month.october.month
    assert_equal Month.new(10).year, Month.october.year
    assert_equal Month.new(11).month, Month.november.month
    assert_equal Month.new(11).year, Month.november.year
    assert_equal Month.new(12).month, Month.december.month
    assert_equal Month.new(12).year, Month.december.year
  end
  
end

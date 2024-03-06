# test/tc_Month_initialize.rb

class TC_Month_initialize < Minitest::Test
  
  def test_no_arguments
    assert_equal Date.today.year, Month.new.year
    assert_equal Date.today.month, Month.new.month
  end
  
  def test_one_argument
    assert_equal Date.today.year, Month.new(12).year
    assert_equal 12, Month.new(12).month
    assert_equal Date.today.year, Month.new(11).year
    assert_equal 11, Month.new(11).month
  end
  
  def test_two_arguments
    assert_equal 2011, Month.new(2011, 12).year
    assert_equal 12, Month.new(2011, 12).month
    assert_equal 2011, Month.new(2011, 11).year
    assert_equal 11, Month.new(2011, 11).month
  end
  
  def test_three_arguments
    assert_raises(ArgumentError){Month.new(1, 2, 3)}
  end
  
end

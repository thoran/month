# test/tc_Month_beginning_of_the_month.rb

class TC_Month_beginning_of_the_month < Minitest::Test
  
  def test_beginning_of_the_month
    assert_equal Date.new(2006, 1, 1), Month.new(2006, 1).beginning_of_the_month
    assert_equal Date.new(2006, 2, 1), Month.new(2006, 2).beginning_of_the_month
    assert_equal Date.new(2008, 2, 1), Month.new(2008, 2).beginning_of_the_month
    assert_equal Date.new(2006, 3, 1), Month.new(2006, 3).beginning_of_the_month
    assert_equal Date.new(2006, 4, 1), Month.new(2006, 4).beginning_of_the_month
    assert_equal Date.new(2006, 5, 1), Month.new(2006, 5).beginning_of_the_month
    assert_equal Date.new(2006, 6, 1), Month.new(2006, 6).beginning_of_the_month
    assert_equal Date.new(2006, 7, 1), Month.new(2006, 7).beginning_of_the_month
    assert_equal Date.new(2006, 8, 1), Month.new(2006, 8).beginning_of_the_month
    assert_equal Date.new(2006, 9, 1), Month.new(2006, 9).beginning_of_the_month
    assert_equal Date.new(2006, 10, 1), Month.new(2006, 10).beginning_of_the_month
    assert_equal Date.new(2006, 11, 1), Month.new(2006, 11).beginning_of_the_month
    assert_equal Date.new(2006, 12, 1), Month.new(2006, 12).beginning_of_the_month
  end
  
end

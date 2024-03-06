# test/tc_Month_previous_month.rb

class TC_Month_previous_month < Minitest::Test
  
  def test_previous_month
    assert_equal Month.new(2010, 12), Month.new(2011, 1).previous_month
    assert_equal Month.new(2011, 11), Month.new(2011, 12).previous_month
    assert_equal Month.new(2011, 10), Month.new(2011, 11).previous_month
  end
  
end

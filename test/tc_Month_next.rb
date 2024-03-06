# test/tc_Month_next.rb

class TC_Month_next < Minitest::Test
  
  def test_next
    assert_equal Month.new(2011, 2), Month.new(2011, 1).next
    assert_equal Month.new(2012, 1), Month.new(2011, 12).next
    assert_equal Month.new(2012, 1), Month.new(2011, 12).next
    assert_equal Month.new(2011, 12), Month.new(2011, 11).next
  end
  
end

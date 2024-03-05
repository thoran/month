# test/tc_Month_succ.rb

class TC_Month_succ < MiniTest::Test
  
  def test_succ
    assert_equal Month.new(2011, 2), Month.new(2011, 1).succ
    assert_equal Month.new(2012, 1), Month.new(2011, 12).succ
    assert_equal Month.new(2012, 12), Month.new(2012, 11).succ
  end
  
end

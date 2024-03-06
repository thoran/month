# test/tc_Month_self.cdate.rb

if __FILE__ == $0
  require 'minitest/autorun'
  $LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
  require 'Month/Constants'
  require 'Month/self.cdate'
end

class TC_Month_self_cdate < Minitest::Test
  
  def test_self_cdate
    assert_equal 3, Month.cdate('First', 'Monday', 2011, 1)
    assert_equal 14, Month.cdate('Second', 'Monday', 2011, 2)
    assert_equal 21, Month.cdate('Third', 'Monday', 2011, 3)
    assert_equal 25, Month.cdate('Fourth', 'Monday', 2011, 4)
    assert_equal 30, Month.cdate('Fifth', 'Monday', 2011, 5)
    assert_equal 27, Month.cdate('Last', 'Monday', 2011, 6)
    assert_equal 18, Month.cdate('Second Last', 'Monday', 2011, 7)
    assert_equal 15, Month.cdate('Third Last', 'Monday', 2011, 8)
    assert_equal 5, Month.cdate('Fourth Last', 'Monday', 2011, 9)
    assert_equal 2, Month.cdate('First', 'Sunday', 2011, 1)
    assert_equal 13, Month.cdate('Second', 'Sunday', 2011, 2)
    assert_equal 20, Month.cdate('Third', 'Sunday', 2011, 3)
    assert_equal 24, Month.cdate('Fourth', 'Sunday', 2011, 4)
    assert_equal 29, Month.cdate('Fifth', 'Sunday', 2011, 5)
    assert_equal 26, Month.cdate('Last', 'Sunday', 2011, 6)
    assert_equal 24, Month.cdate('Second Last', 'Sunday', 2011, 7)
    assert_equal 14, Month.cdate('Third Last', 'Sunday', 2011, 8)
    assert_equal 4, Month.cdate('Fourth Last', 'Sunday', 2011, 9)
  end
  
end

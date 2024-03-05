#!/usr/bin/env ruby
#
# Test case: Month#days.  
# 
# 20061001
# 0.0.0
#
# Changes: 

class TC_Month_Days < Test::Unit::TestCase
  
  def test_long
    assert_equal Month.days('January'), 31
    assert_equal Month.days('February', 2007), 28
    assert_equal Month.days('February', 2008), 29
    assert_equal Month.days('March'), 31
    assert_equal Month.days('April'), 30
    assert_equal Month.days('May'), 31
    assert_equal Month.days('June'), 30
    assert_equal Month.days('July'), 31
    assert_equal Month.days('August'), 31
    assert_equal Month.days('September'), 30
    assert_equal Month.days('October'), 31
    assert_equal Month.days('November'), 30
    assert_equal Month.days('December'), 31
  end
  
  def test_short
    assert_equal Month.days('Jan'), 31
    assert_equal Month.days('Feb', 2007), 28
    assert_equal Month.days('Feb', 2008), 29
    assert_equal Month.days('Mar'), 31
    assert_equal Month.days('Apr'), 30
    assert_equal Month.days('May'), 31
    assert_equal Month.days('Jun'), 30
    assert_equal Month.days('Jul'), 31
    assert_equal Month.days('Aug'), 31
    assert_equal Month.days('Sep'), 30
    assert_equal Month.days('Oct'), 31
    assert_equal Month.days('Nov'), 30
    assert_equal Month.days('Dec'), 31
  end
  
  def test_num_as_num
    assert_equal Month.days(1), 31
    assert_equal Month.days(2, 2007), 28
    assert_equal Month.days(2, 2008), 29
    assert_equal Month.days(3), 31
    assert_equal Month.days(4), 30
    assert_equal Month.days(5), 31
    assert_equal Month.days(6), 30
    assert_equal Month.days(7), 31
    assert_equal Month.days(8), 31
    assert_equal Month.days(9), 30
    assert_equal Month.days(10), 31
    assert_equal Month.days(11), 30
    assert_equal Month.days(12), 31
  end
  
  def test_num_as_string
    assert_equal Month.days('1'), 31
    assert_equal Month.days('2', 2007), 28
    assert_equal Month.days('2', 2008), 29
    assert_equal Month.days('3'), 31
    assert_equal Month.days('4'), 30
    assert_equal Month.days('5'), 31
    assert_equal Month.days('6'), 30
    assert_equal Month.days('7'), 31
    assert_equal Month.days('8'), 31
    assert_equal Month.days('9'), 30
    assert_equal Month.days('10'), 31
    assert_equal Month.days('11'), 30
    assert_equal Month.days('12'), 31
  end

  def test_crap
    assert_equal Month.days('random'), nil
    assert_equal Month.days(13), nil
  end
      
end

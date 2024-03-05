#!/usr/bin/env ruby
#
# Test case: Month#days_in_month.  
# 
# 20061001
# 0.0.0
#
# Changes: 

class TC_Month_Days_In_Month < Test::Unit::TestCase
  
  def test_long
    assert_equal Month.days_in_month('January'), 31
    assert_equal Month.days_in_month('February', 2007), 28
    assert_equal Month.days_in_month('February', 2008), 29
    assert_equal Month.days_in_month('March'), 31
    assert_equal Month.days_in_month('April'), 30
    assert_equal Month.days_in_month('May'), 31
    assert_equal Month.days_in_month('June'), 30
    assert_equal Month.days_in_month('July'), 31
    assert_equal Month.days_in_month('August'), 31
    assert_equal Month.days_in_month('September'), 30
    assert_equal Month.days_in_month('October'), 31
    assert_equal Month.days_in_month('November'), 30
    assert_equal Month.days_in_month('December'), 31
  end
  
  def test_short
    assert_equal Month.days_in_month('Jan'), 31
    assert_equal Month.days_in_month('Feb', 2007), 28
    assert_equal Month.days_in_month('Feb', 2008), 29
    assert_equal Month.days_in_month('Mar'), 31
    assert_equal Month.days_in_month('Apr'), 30
    assert_equal Month.days_in_month('May'), 31
    assert_equal Month.days_in_month('Jun'), 30
    assert_equal Month.days_in_month('Jul'), 31
    assert_equal Month.days_in_month('Aug'), 31
    assert_equal Month.days_in_month('Sep'), 30
    assert_equal Month.days_in_month('Oct'), 31
    assert_equal Month.days_in_month('Nov'), 30
    assert_equal Month.days_in_month('Dec'), 31
  end
  
  def test_num_as_num
    assert_equal Month.days_in_month(1), 31
    assert_equal Month.days_in_month(2, 2007), 28
    assert_equal Month.days_in_month(2, 2008), 29
    assert_equal Month.days_in_month(3), 31
    assert_equal Month.days_in_month(4), 30
    assert_equal Month.days_in_month(5), 31
    assert_equal Month.days_in_month(6), 30
    assert_equal Month.days_in_month(7), 31
    assert_equal Month.days_in_month(8), 31
    assert_equal Month.days_in_month(9), 30
    assert_equal Month.days_in_month(10), 31
    assert_equal Month.days_in_month(11), 30
    assert_equal Month.days_in_month(12), 31
  end
  
  def test_num_as_string
    assert_equal Month.days_in_month('1'), 31
    assert_equal Month.days_in_month('2', 2007), 28
    assert_equal Month.days_in_month('2', 2008), 29
    assert_equal Month.days_in_month('3'), 31
    assert_equal Month.days_in_month('4'), 30
    assert_equal Month.days_in_month('5'), 31
    assert_equal Month.days_in_month('6'), 30
    assert_equal Month.days_in_month('7'), 31
    assert_equal Month.days_in_month('8'), 31
    assert_equal Month.days_in_month('9'), 30
    assert_equal Month.days_in_month('10'), 31
    assert_equal Month.days_in_month('11'), 30
    assert_equal Month.days_in_month('12'), 31
  end

  def test_crap
    assert_equal Month.days_in_month('random'), nil
    assert_equal Month.days_in_month(13), nil
  end
      
end

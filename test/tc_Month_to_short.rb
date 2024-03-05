#!/usr/bin/env ruby
#
# Test case: Month#to_short.  
# 
# 20061001
# 0.0.0
#
# Changes: 

class TC_Month_To_Short < Test::Unit::TestCase
  
  def test_long
    assert_equal Month.to_short('January'), 'Jan'
    assert_equal Month.to_short('February'), 'Feb'
    assert_equal Month.to_short('March'), 'Mar'
    assert_equal Month.to_short('April'), 'Apr'
    assert_equal Month.to_short('May'), 'May'
    assert_equal Month.to_short('June'), 'Jun'
    assert_equal Month.to_short('July'), 'Jul'
    assert_equal Month.to_short('August'), 'Aug'
    assert_equal Month.to_short('September'), 'Sep'
    assert_equal Month.to_short('October'), 'Oct'
    assert_equal Month.to_short('November'), 'Nov'
    assert_equal Month.to_short('December'), 'Dec'
  end
  
  def test_short
    assert_equal Month.to_short('Jan'), 'Jan'
    assert_equal Month.to_short('Feb'), 'Feb'
    assert_equal Month.to_short('Mar'), 'Mar'
    assert_equal Month.to_short('Apr'), 'Apr'
    assert_equal Month.to_short('May'), 'May'
    assert_equal Month.to_short('Jun'), 'Jun'
    assert_equal Month.to_short('Jul'), 'Jul'
    assert_equal Month.to_short('Aug'), 'Aug'
    assert_equal Month.to_short('Sep'), 'Sep'
    assert_equal Month.to_short('Oct'), 'Oct'
    assert_equal Month.to_short('Nov'), 'Nov'
    assert_equal Month.to_short('Dec'), 'Dec'
  end
  
  def test_num_as_num
    assert_equal Month.to_short(1), 'Jan'
    assert_equal Month.to_short(2), 'Feb'
    assert_equal Month.to_short(3), 'Mar'
    assert_equal Month.to_short(4), 'Apr'
    assert_equal Month.to_short(5), 'May'
    assert_equal Month.to_short(6), 'Jun'
    assert_equal Month.to_short(7), 'Jul'
    assert_equal Month.to_short(8), 'Aug'
    assert_equal Month.to_short(9), 'Sep'
    assert_equal Month.to_short(10), 'Oct'
    assert_equal Month.to_short(11), 'Nov'
    assert_equal Month.to_short(12), 'Dec'
  end
  
  def test_num_as_string
    assert_equal Month.to_short('1'), 'Jan'
    assert_equal Month.to_short('2'), 'Feb'
    assert_equal Month.to_short('3'), 'Mar'
    assert_equal Month.to_short('4'), 'Apr'
    assert_equal Month.to_short('5'), 'May'
    assert_equal Month.to_short('6'), 'Jun'
    assert_equal Month.to_short('7'), 'Jul'
    assert_equal Month.to_short('8'), 'Aug'
    assert_equal Month.to_short('9'), 'Sep'
    assert_equal Month.to_short('10'), 'Oct'
    assert_equal Month.to_short('11'), 'Nov'
    assert_equal Month.to_short('12'), 'Dec'
  end

  def test_crap
    assert_equal Month.to_short('random'), nil
    assert_equal Month.to_short(13), nil
  end
      
end

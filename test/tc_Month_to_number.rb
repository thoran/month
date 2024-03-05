#!/usr/bin/env ruby
#
# Test case: Month#to_number.  
# 
# 20061001
# 0.0.0
#
# Changes: 

class TC_Month_To_Num < Test::Unit::TestCase
  
  def test_long
    assert_equal Month.to_number('January'), 1
    assert_equal Month.to_number('February'), 2
    assert_equal Month.to_number('March'), 3
    assert_equal Month.to_number('April'), 4
    assert_equal Month.to_number('May'), 5
    assert_equal Month.to_number('June'), 6
    assert_equal Month.to_number('July'), 7
    assert_equal Month.to_number('August'), 8
    assert_equal Month.to_number('September'), 9
    assert_equal Month.to_number('October'), 10
    assert_equal Month.to_number('November'), 11
    assert_equal Month.to_number('December'), 12
  end
  
  def test_short
    assert_equal Month.to_number('Jan'), 1
    assert_equal Month.to_number('Feb'), 2
    assert_equal Month.to_number('Mar'), 3
    assert_equal Month.to_number('Apr'), 4
    assert_equal Month.to_number('May'), 5
    assert_equal Month.to_number('Jun'), 6
    assert_equal Month.to_number('Jul'), 7
    assert_equal Month.to_number('Aug'), 8
    assert_equal Month.to_number('Sep'), 9
    assert_equal Month.to_number('Oct'), 10
    assert_equal Month.to_number('Nov'), 11
    assert_equal Month.to_number('Dec'), 12
  end
  
  def test_num_as_num
    assert_equal Month.to_number(1), 1
    assert_equal Month.to_number(2), 2
    assert_equal Month.to_number(3), 3
    assert_equal Month.to_number(4), 4
    assert_equal Month.to_number(5), 5
    assert_equal Month.to_number(6), 6
    assert_equal Month.to_number(7), 7
    assert_equal Month.to_number(8), 8
    assert_equal Month.to_number(9), 9
    assert_equal Month.to_number(10), 10
    assert_equal Month.to_number(11), 11
    assert_equal Month.to_number(12), 12
  end
  
  def test_num_as_string
    assert_equal Month.to_number('1'), 1
    assert_equal Month.to_number('2'), 2
    assert_equal Month.to_number('3'), 3
    assert_equal Month.to_number('4'), 4
    assert_equal Month.to_number('5'), 5
    assert_equal Month.to_number('6'), 6
    assert_equal Month.to_number('7'), 7
    assert_equal Month.to_number('8'), 8
    assert_equal Month.to_number('9'), 9
    assert_equal Month.to_number('10'), 10
    assert_equal Month.to_number('11'), 11
    assert_equal Month.to_number('12'), 12
  end

  def test_crap
    assert_equal Month.to_number('random'), nil
    assert_equal Month.to_number(13), nil
  end
      
end

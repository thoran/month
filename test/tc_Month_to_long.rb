#!/usr/bin/env ruby
#
# Test case: Month#to_long.  
# 
# 20061001
# 0.0.1
#
# Changes: 
# 1. I didn't test for different capitalizations before and it was only because of one failure that I picked up the failings of version 0.0.5 of the Month class.  

class TC_Month_To_Long < Test::Unit::TestCase
  
  def test_long_capitalized
    assert_equal Month.to_long('January'), 'January'
    assert_equal Month.to_long('February'), 'February'
    assert_equal Month.to_long('March'), 'March'
    assert_equal Month.to_long('April'), 'April'
    assert_equal Month.to_long('May'), 'May'
    assert_equal Month.to_long('June'), 'June'
    assert_equal Month.to_long('July'), 'July'
    assert_equal Month.to_long('August'), 'August'
    assert_equal Month.to_long('September'), 'September'
    assert_equal Month.to_long('October'), 'October'
    assert_equal Month.to_long('November'), 'November'
    assert_equal Month.to_long('December'), 'December'
  end
  
  def test_long_downcase
    assert_equal Month.to_long('january'), 'January'
    assert_equal Month.to_long('february'), 'February'
    assert_equal Month.to_long('march'), 'March'
    assert_equal Month.to_long('april'), 'April'
    assert_equal Month.to_long('may'), 'May'
    assert_equal Month.to_long('june'), 'June'
    assert_equal Month.to_long('july'), 'July'
    assert_equal Month.to_long('august'), 'August'
    assert_equal Month.to_long('september'), 'September'
    assert_equal Month.to_long('october'), 'October'
    assert_equal Month.to_long('november'), 'November'
    assert_equal Month.to_long('december'), 'December'
  end
  
  def test_short_capitalized
    assert_equal Month.to_long('Jan'), 'January'
    assert_equal Month.to_long('Feb'), 'February'
    assert_equal Month.to_long('Mar'), 'March'
    assert_equal Month.to_long('Apr'), 'April'
    assert_equal Month.to_long('May'), 'May'
    assert_equal Month.to_long('Jun'), 'June'
    assert_equal Month.to_long('Jul'), 'July'
    assert_equal Month.to_long('Aug'), 'August'
    assert_equal Month.to_long('Sep'), 'September'
    assert_equal Month.to_long('Oct'), 'October'
    assert_equal Month.to_long('Nov'), 'November'
    assert_equal Month.to_long('Dec'), 'December'
  end
  
  def test_short_downcase
    assert_equal Month.to_long('jan'), 'January'
    assert_equal Month.to_long('feb'), 'February'
    assert_equal Month.to_long('mar'), 'March'
    assert_equal Month.to_long('apr'), 'April'
    assert_equal Month.to_long('may'), 'May'
    assert_equal Month.to_long('jun'), 'June'
    assert_equal Month.to_long('jul'), 'July'
    assert_equal Month.to_long('aug'), 'August'
    assert_equal Month.to_long('sep'), 'September'
    assert_equal Month.to_long('oct'), 'October'
    assert_equal Month.to_long('nov'), 'November'
    assert_equal Month.to_long('dec'), 'December'
  end
  
  def test_num_as_num
    assert_equal Month.to_long(1), 'January'
    assert_equal Month.to_long(2), 'February'
    assert_equal Month.to_long(3), 'March'
    assert_equal Month.to_long(4), 'April'
    assert_equal Month.to_long(5), 'May'
    assert_equal Month.to_long(6), 'June'
    assert_equal Month.to_long(7), 'July'
    assert_equal Month.to_long(8), 'August'
    assert_equal Month.to_long(9), 'September'
    assert_equal Month.to_long(10), 'October'
    assert_equal Month.to_long(11), 'November'
    assert_equal Month.to_long(12), 'December'
  end
  
  def test_num_as_string
    assert_equal Month.to_long('1'), 'January'
    assert_equal Month.to_long('2'), 'February'
    assert_equal Month.to_long('3'), 'March'
    assert_equal Month.to_long('4'), 'April'
    assert_equal Month.to_long('5'), 'May'
    assert_equal Month.to_long('6'), 'June'
    assert_equal Month.to_long('7'), 'July'
    assert_equal Month.to_long('8'), 'August'
    assert_equal Month.to_long('9'), 'September'
    assert_equal Month.to_long('10'), 'October'
    assert_equal Month.to_long('11'), 'November'
    assert_equal Month.to_long('12'), 'December'
  end

  def test_crap
    assert_equal Month.to_long('random'), nil
    assert_equal Month.to_long(13), nil
  end
      
end

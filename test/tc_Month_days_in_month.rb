#!/usr/bin/env ruby
#
# Test case: Month#days_in_month.  
# 
# 20061002
# 0.0.2
#
# Changes: 
# 1. I didn't test for different capitalizations before and it was only because of one failure that I picked up the failings of version 0.0.5 of the Month class.  
# 2. I switched the order of the inputs to the tests back to the way that I'd done it before and back to the way it should have been done, since Test::Unit::TestCase#test_ assumes that the result comes first, whereas I thought it might be more natural to have it come second.  
# 3. I added in tests for the default year for when it is February.  

class TC_Month_Days_In_Month < Test::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 31, Month.days_in_month('January')
    assert_equal 28, Month.days_in_month('February')
    assert_equal 28, Month.days_in_month('February', 2007)
    assert_equal 29, Month.days_in_month('February', 2008)
    assert_equal 31, Month.days_in_month('March')
    assert_equal 30, Month.days_in_month('April')
    assert_equal 31, Month.days_in_month('May')
    assert_equal 30, Month.days_in_month('June')
    assert_equal 31, Month.days_in_month('July')
    assert_equal 31, Month.days_in_month('August')
    assert_equal 30, Month.days_in_month('September')
    assert_equal 31, Month.days_in_month('October')
    assert_equal 30, Month.days_in_month('November')
    assert_equal 31, Month.days_in_month('December')
  end
  
  def test_long_downcase
    assert_equal 31, Month.days_in_month('january')
    assert_equal 28, Month.days_in_month('february')
    assert_equal 28, Month.days_in_month('february', 2007)
    assert_equal 29, Month.days_in_month('february', 2008)
    assert_equal 31, Month.days_in_month('march')
    assert_equal 30, Month.days_in_month('april')
    assert_equal 31, Month.days_in_month('may')
    assert_equal 30, Month.days_in_month('june')
    assert_equal 31, Month.days_in_month('july')
    assert_equal 31, Month.days_in_month('august')
    assert_equal 30, Month.days_in_month('september')
    assert_equal 31, Month.days_in_month('october')
    assert_equal 30, Month.days_in_month('november')
    assert_equal 31, Month.days_in_month('december')
  end
  
  def test_short_capitalized
    assert_equal 31, Month.days_in_month('Jan')
    assert_equal 28, Month.days_in_month('Feb')
    assert_equal 28, Month.days_in_month('Feb', 2007)
    assert_equal 29, Month.days_in_month('Feb', 2008)
    assert_equal 31, Month.days_in_month('Mar')
    assert_equal 30, Month.days_in_month('Apr')
    assert_equal 31, Month.days_in_month('May')
    assert_equal 30, Month.days_in_month('Jun')
    assert_equal 31, Month.days_in_month('Jul')
    assert_equal 31, Month.days_in_month('Aug')
    assert_equal 30, Month.days_in_month('Sep')
    assert_equal 31, Month.days_in_month('Oct')
    assert_equal 30, Month.days_in_month('Nov')
    assert_equal 31, Month.days_in_month('Dec')
  end
  
  def test_short_downcase
    assert_equal 31, Month.days_in_month('jan')
    assert_equal 28, Month.days_in_month('feb')
    assert_equal 28, Month.days_in_month('feb', 2007)
    assert_equal 29, Month.days_in_month('feb', 2008)
    assert_equal 31, Month.days_in_month('mar')
    assert_equal 30, Month.days_in_month('apr')
    assert_equal 31, Month.days_in_month('may')
    assert_equal 30, Month.days_in_month('jun')
    assert_equal 31, Month.days_in_month('jul')
    assert_equal 31, Month.days_in_month('aug')
    assert_equal 30, Month.days_in_month('sep')
    assert_equal 31, Month.days_in_month('oct')
    assert_equal 30, Month.days_in_month('nov')
    assert_equal 31, Month.days_in_month('dec')
  end
  
  def test_num_as_num
    assert_equal 31, Month.days_in_month(1)
    assert_equal 28, Month.days_in_month(2)
    assert_equal 28, Month.days_in_month(2, 2007)
    assert_equal 29, Month.days_in_month(2, 2008)
    assert_equal 31, Month.days_in_month(3)
    assert_equal 30, Month.days_in_month(4)
    assert_equal 31, Month.days_in_month(5)
    assert_equal 30, Month.days_in_month(6)
    assert_equal 31, Month.days_in_month(7)
    assert_equal 31, Month.days_in_month(8)
    assert_equal 30, Month.days_in_month(9)
    assert_equal 31, Month.days_in_month(10)
    assert_equal 30, Month.days_in_month(11)
    assert_equal 31, Month.days_in_month(12)
  end
  
  def test_num_as_string
    assert_equal 31, Month.days_in_month('1')
    assert_equal 28, Month.days_in_month('2')
    assert_equal 28, Month.days_in_month('2', 2007)
    assert_equal 29, Month.days_in_month('2', 2008)
    assert_equal 31, Month.days_in_month('3')
    assert_equal 30, Month.days_in_month('4')
    assert_equal 31, Month.days_in_month('5')
    assert_equal 30, Month.days_in_month('6')
    assert_equal 31, Month.days_in_month('7')
    assert_equal 31, Month.days_in_month('8')
    assert_equal 30, Month.days_in_month('9')
    assert_equal 31, Month.days_in_month('10')
    assert_equal 30, Month.days_in_month('11')
    assert_equal 31, Month.days_in_month('12')
  end

  def test_crap
    assert_equal nil, Month.days_in_month('random')
    assert_equal nil, Month.days_in_month(13)
  end
      
end

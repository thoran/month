#!/usr/bin/env ruby
#
# Test case: Month#days.  
# 
# 20061002
# 0.0.2
#
# Changes: 
# 1. I didn't test for different capitalizations before and it was only because of one failure that I picked up the failings of version 0.0.5 of the Month class.  
# 2. I switched the order of the inputs to the tests back to the way that I'd done it before and back to the way it should have been done, since Test::Unit::TestCase#test_ assumes that the result comes first, whereas I thought it might be more natural to have it come second.  
# 3. I added in tests for the default year for when it is February.  

class TC_Month_Days < Test::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 31, Month.days('January')
    assert_equal 28, Month.days('February')
    assert_equal 28, Month.days('February', 2007)
    assert_equal 29, Month.days('February', 2008)
    assert_equal 31, Month.days('March')
    assert_equal 30, Month.days('April')
    assert_equal 31, Month.days('May')
    assert_equal 30, Month.days('June')
    assert_equal 31, Month.days('July')
    assert_equal 31, Month.days('August')
    assert_equal 30, Month.days('September')
    assert_equal 31, Month.days('October')
    assert_equal 30, Month.days('November')
    assert_equal 31, Month.days('December')
  end
  
  def test_long_downcase
    assert_equal 31, Month.days('january')
    assert_equal 28, Month.days('february')
    assert_equal 28, Month.days('february', 2007)
    assert_equal 29, Month.days('february', 2008)
    assert_equal 31, Month.days('march')
    assert_equal 30, Month.days('april')
    assert_equal 31, Month.days('may')
    assert_equal 30, Month.days('june')
    assert_equal 31, Month.days('july')
    assert_equal 31, Month.days('august')
    assert_equal 30, Month.days('september')
    assert_equal 31, Month.days('october')
    assert_equal 30, Month.days('november')
    assert_equal 31, Month.days('december')
  end
  
  def test_short_capitalized
    assert_equal 31, Month.days('Jan')
    assert_equal 28, Month.days('Feb')
    assert_equal 28, Month.days('Feb', 2007)
    assert_equal 29, Month.days('Feb', 2008)
    assert_equal 31, Month.days('Mar')
    assert_equal 30, Month.days('Apr')
    assert_equal 31, Month.days('May')
    assert_equal 30, Month.days('Jun')
    assert_equal 31, Month.days('Jul')
    assert_equal 31, Month.days('Aug')
    assert_equal 30, Month.days('Sep')
    assert_equal 31, Month.days('Oct')
    assert_equal 30, Month.days('Nov')
    assert_equal 31, Month.days('Dec')
  end
  
  def test_short_downcase
    assert_equal 31, Month.days('jan')
    assert_equal 28, Month.days('feb')
    assert_equal 28, Month.days('feb', 2007)
    assert_equal 29, Month.days('feb', 2008)
    assert_equal 31, Month.days('mar')
    assert_equal 30, Month.days('apr')
    assert_equal 31, Month.days('may')
    assert_equal 30, Month.days('jun')
    assert_equal 31, Month.days('jul')
    assert_equal 31, Month.days('aug')
    assert_equal 30, Month.days('sep')
    assert_equal 31, Month.days('oct')
    assert_equal 30, Month.days('nov')
    assert_equal 31, Month.days('dec')
  end
  
  def test_num_as_num
    assert_equal 31, Month.days(1)
    assert_equal 28, Month.days(2)
    assert_equal 28, Month.days(2, 2007)
    assert_equal 29, Month.days(2, 2008)
    assert_equal 31, Month.days(3)
    assert_equal 30, Month.days(4)
    assert_equal 31, Month.days(5)
    assert_equal 30, Month.days(6)
    assert_equal 31, Month.days(7)
    assert_equal 31, Month.days(8)
    assert_equal 30, Month.days(9)
    assert_equal 31, Month.days(10)
    assert_equal 30, Month.days(11)
    assert_equal 31, Month.days(12)
  end
  
  def test_num_as_string
    assert_equal 31, Month.days('1')
    assert_equal 28, Month.days('2')
    assert_equal 28, Month.days('2', 2007)
    assert_equal 29, Month.days('2', 2008)
    assert_equal 31, Month.days('3')
    assert_equal 30, Month.days('4')
    assert_equal 31, Month.days('5')
    assert_equal 30, Month.days('6')
    assert_equal 31, Month.days('7')
    assert_equal 31, Month.days('8')
    assert_equal 30, Month.days('9')
    assert_equal 31, Month.days('10')
    assert_equal 30, Month.days('11')
    assert_equal 31, Month.days('12')
  end

  def test_crap
    assert_equal nil, Month.days('random')
    assert_equal nil, Month.days(13)
  end
      
end

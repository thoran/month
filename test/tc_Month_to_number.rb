#!/usr/bin/env ruby
#
# Test case: Month#to_number.  
# 
# 20061002
# 0.0.2
#
# Changes: 
# 1. I didn't test for different capitalizations before and it was only because of one failure that I picked up the failings of version 0.0.5 of the Month class.  
# 2. I switched the order of the inputs to the tests back to the way that I'd done it before and back to the way it should have been done, since Test::Unit::TestCase#test_ assumes that the result comes first, whereas I thought it might be more natural to have it come second.  

class TC_Month_To_Num < Test::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 1, Month.to_number('January')
    assert_equal 2, Month.to_number('February')
    assert_equal 3, Month.to_number('March')
    assert_equal 4, Month.to_number('April')
    assert_equal 5, Month.to_number('May')
    assert_equal 6, Month.to_number('June')
    assert_equal 7, Month.to_number('July')
    assert_equal 8, Month.to_number('August')
    assert_equal 9, Month.to_number('September')
    assert_equal 10, Month.to_number('October')
    assert_equal 11, Month.to_number('November')
    assert_equal 12, Month.to_number('December')
  end
  
  def test_long_downcase
    assert_equal 1, Month.to_number('january')
    assert_equal 2, Month.to_number('february')
    assert_equal 3, Month.to_number('march')
    assert_equal 4, Month.to_number('april')
    assert_equal 5, Month.to_number('may')
    assert_equal 6, Month.to_number('june')
    assert_equal 7, Month.to_number('july')
    assert_equal 8, Month.to_number('august')
    assert_equal 9, Month.to_number('september')
    assert_equal 10, Month.to_number('october')
    assert_equal 11, Month.to_number('november')
    assert_equal 12, Month.to_number('december')
  end
  
  def test_short_capitalized
    assert_equal 1, Month.to_number('Jan')
    assert_equal 2, Month.to_number('Feb')
    assert_equal 3, Month.to_number('Mar')
    assert_equal 4, Month.to_number('Apr')
    assert_equal 5, Month.to_number('May')
    assert_equal 6, Month.to_number('Jun')
    assert_equal 7, Month.to_number('Jul')
    assert_equal 8, Month.to_number('Aug')
    assert_equal 9, Month.to_number('Sep')
    assert_equal 10, Month.to_number('Oct')
    assert_equal 11, Month.to_number('Nov')
    assert_equal 12, Month.to_number('Dec')
  end
  
  def test_short_downcase
    assert_equal 1, Month.to_number('jan')
    assert_equal 2, Month.to_number('feb')
    assert_equal 3, Month.to_number('mar')
    assert_equal 4, Month.to_number('apr')
    assert_equal 5, Month.to_number('may')
    assert_equal 6, Month.to_number('jun')
    assert_equal 7, Month.to_number('jul')
    assert_equal 8, Month.to_number('aug')
    assert_equal 9, Month.to_number('sep')
    assert_equal 10, Month.to_number('oct')
    assert_equal 11, Month.to_number('nov')
    assert_equal 12, Month.to_number('dec')
  end
  
  def test_num_as_num
    assert_equal 1, Month.to_number(1)
    assert_equal 2, Month.to_number(2)
    assert_equal 3, Month.to_number(3)
    assert_equal 4, Month.to_number(4)
    assert_equal 5, Month.to_number(5)
    assert_equal 6, Month.to_number(6)
    assert_equal 7, Month.to_number(7)
    assert_equal 8, Month.to_number(8)
    assert_equal 9, Month.to_number(9)
    assert_equal 10, Month.to_number(10)
    assert_equal 11, Month.to_number(11)
    assert_equal 12, Month.to_number(12)
  end
  
  def test_num_as_string
    assert_equal 1, Month.to_number('1')
    assert_equal 2, Month.to_number('2')
    assert_equal 3, Month.to_number('3')
    assert_equal 4, Month.to_number('4')
    assert_equal 5, Month.to_number('5')
    assert_equal 6, Month.to_number('6')
    assert_equal 7, Month.to_number('7')
    assert_equal 8, Month.to_number('8')
    assert_equal 9, Month.to_number('9')
    assert_equal 10, Month.to_number('10')
    assert_equal 11, Month.to_number('11')
    assert_equal 12, Month.to_number('12')
  end

  def test_crap
    assert_equal nil, Month.to_number('random')
    assert_equal nil, Month.to_number(13)
  end
      
end

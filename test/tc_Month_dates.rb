#!/usr/bin/env ruby
#
# Test case: Month#dates.  
# 
# 20061002
# 0.0.1
#
# Changes: 
# 1. The code in 0.1.1 couldn't respond appropriately to #test_crap and there was no accommodation for the short versions of days, hence 0.1.2 version of Month and the 0.0.1 version of the tests.  

class TC_Month_Dates < Test::Unit::TestCase
  
  def test_day_capitalized_long
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates('Monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tuesday')
    assert_equal [4, 11, 18, 25], Month.dates('Wednesday')
    assert_equal [5, 12, 19, 26], Month.dates('Thursday')
    assert_equal [6, 13, 20, 27], Month.dates('Friday')
    assert_equal [7, 14, 21, 28], Month.dates('Saturday')
  end
  
  def test_day_downcase_long
    assert_equal [1, 8, 15, 22, 29], Month.dates('sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates('monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates('tuesday')
    assert_equal [4, 11, 18, 25], Month.dates('wednesday')
    assert_equal [5, 12, 19, 26], Month.dates('thursday')
    assert_equal [6, 13, 20, 27], Month.dates('friday')
    assert_equal [7, 14, 21, 28], Month.dates('saturday')
  end
  
  def test_day_capitalized_short
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates('Mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tue')
    assert_equal [4, 11, 18, 25], Month.dates('Wed')
    assert_equal [5, 12, 19, 26], Month.dates('Thu')
    assert_equal [6, 13, 20, 27], Month.dates('Fri')
    assert_equal [7, 14, 21, 28], Month.dates('Sat')
  end
  
  def test_day_downcase_short
    assert_equal [1, 8, 15, 22, 29], Month.dates('sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates('mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates('tue')
    assert_equal [4, 11, 18, 25], Month.dates('wed')
    assert_equal [5, 12, 19, 26], Month.dates('thu')
    assert_equal [6, 13, 20, 27], Month.dates('fri')
    assert_equal [7, 14, 21, 28], Month.dates('sat')
  end
  
  def test_day_as_num_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(0)
    assert_equal [2, 9, 16, 23, 30], Month.dates(1)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2)
    assert_equal [4, 11, 18, 25], Month.dates(3)
    assert_equal [5, 12, 19, 26], Month.dates(4)
    assert_equal [6, 13, 20, 27], Month.dates(5)
    assert_equal [7, 14, 21, 28], Month.dates(6)
  end
  
  def test_day_as_num_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates('0')
    assert_equal [2, 9, 16, 23, 30], Month.dates('1')
    assert_equal [3, 10, 17, 24, 31], Month.dates('2')
    assert_equal [4, 11, 18, 25], Month.dates('3')
    assert_equal [5, 12, 19, 26], Month.dates('4')
    assert_equal [6, 13, 20, 27], Month.dates('5')
    assert_equal [7, 14, 21, 28], Month.dates('6')
  end
  
  def test_crap
    assert_equal nil, Month.dates('random')
    assert_equal nil, Month.dates(32)
  end
  
end

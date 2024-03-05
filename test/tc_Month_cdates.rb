#!/usr/bin/env ruby
# Test case: Month#cdates.  

# 20061002
# 0.4.0

# Description: This tests for when 1 = Monday...7 = Sunday.  

# Changes: 

class TC_Month_Cdates < Test::Unit::TestCase
  
  def test_day_capitalized_long
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.cdates('Sunday')
      assert_equal [2, 9, 16, 23, 30], Month.cdates('Monday')
      assert_equal [3, 10, 17, 24, 31], Month.cdates('Tuesday')
      assert_equal [4, 11, 18, 25], Month.cdates('Wednesday')
      assert_equal [5, 12, 19, 26], Month.cdates('Thursday')
      assert_equal [6, 13, 20, 27], Month.cdates('Friday')
      assert_equal [7, 14, 21, 28], Month.cdates('Saturday')
    end
  end
  
  def test_day_downcase_long
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.cdates('sunday')
      assert_equal [2, 9, 16, 23, 30], Month.cdates('monday')
      assert_equal [3, 10, 17, 24, 31], Month.cdates('tuesday')
      assert_equal [4, 11, 18, 25], Month.cdates('wednesday')
      assert_equal [5, 12, 19, 26], Month.cdates('thursday')
      assert_equal [6, 13, 20, 27], Month.cdates('friday')
      assert_equal [7, 14, 21, 28], Month.cdates('saturday')
    end
  end
  
  def test_day_capitalized_short
    if Date.today.year == 2006 && Date.today.month == 10    
      assert_equal [1, 8, 15, 22, 29], Month.cdates('Sun')
      assert_equal [2, 9, 16, 23, 30], Month.cdates('Mon')
      assert_equal [3, 10, 17, 24, 31], Month.cdates('Tue')
      assert_equal [4, 11, 18, 25], Month.cdates('Wed')
      assert_equal [5, 12, 19, 26], Month.cdates('Thu')
      assert_equal [6, 13, 20, 27], Month.cdates('Fri')
      assert_equal [7, 14, 21, 28], Month.cdates('Sat')
    end
  end
  
  def test_day_downcase_short
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.cdates('sun')
      assert_equal [2, 9, 16, 23, 30], Month.cdates('mon')
      assert_equal [3, 10, 17, 24, 31], Month.cdates('tue')
      assert_equal [4, 11, 18, 25], Month.cdates('wed')
      assert_equal [5, 12, 19, 26], Month.cdates('thu')
      assert_equal [6, 13, 20, 27], Month.cdates('fri')
      assert_equal [7, 14, 21, 28], Month.cdates('sat')
    end
  end
  
  def test_day_as_num_as_num
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.cdates(7)
      assert_equal [2, 9, 16, 23, 30], Month.cdates(1)
      assert_equal [3, 10, 17, 24, 31], Month.cdates(2)
      assert_equal [4, 11, 18, 25], Month.cdates(3)
      assert_equal [5, 12, 19, 26], Month.cdates(4)
      assert_equal [6, 13, 20, 27], Month.cdates(5)
      assert_equal [7, 14, 21, 28], Month.cdates(6)
    end
  end
  
  def test_day_as_num_as_string
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.cdates('7')
      assert_equal [2, 9, 16, 23, 30], Month.cdates('1')
      assert_equal [3, 10, 17, 24, 31], Month.cdates('2')
      assert_equal [4, 11, 18, 25], Month.cdates('3')
      assert_equal [5, 12, 19, 26], Month.cdates('4')
      assert_equal [6, 13, 20, 27], Month.cdates('5')
      assert_equal [7, 14, 21, 28], Month.cdates('6')
    end
  end
  
  def test_day_capitalized_long_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.cdates('Sunday', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('Monday', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('Tuesday', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('Wednesday', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('Thursday', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('Friday', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('Saturday', 10, 2006)
  end
  
  def test_day_downcase_long_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.cdates('sunday', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('monday', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('tuesday', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('wednesday', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('thursday', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('friday', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('saturday', 10, 2006)
  end
  
  def test_day_capitalized_short_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.cdates('Sun', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('Mon', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('Tue', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('Wed', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('Thu', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('Fri', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('Sat', 10, 2006)
  end
  
  def test_day_downcase_short_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.cdates('sun', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('mon', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('tue', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('wed', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('thu', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('fri', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('sat', 10, 2006)
  end
  
  def test_day_as_num_as_num_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.cdates(7, 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates(1, 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates(2, 10, 2006)
    assert_equal [4, 11, 18, 25], Month.cdates(3, 10, 2006)
    assert_equal [5, 12, 19, 26], Month.cdates(4, 10, 2006)
    assert_equal [6, 13, 20, 27], Month.cdates(5, 10, 2006)
    assert_equal [7, 14, 21, 28], Month.cdates(6, 10, 2006)
  end
  
  def test_day_as_num_as_string_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.cdates('7', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('1', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('2', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('3', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('4', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('5', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('6', 10, 2006)
  end
  
  def test_day_capitalized_long_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.cdates('Sunday', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('Monday', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('Tuesday', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('Wednesday', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('Thursday', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('Friday', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('Saturday', '10', 2006)
  end
  
  def test_day_downcase_long_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.cdates('sunday', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('monday', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('tuesday', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('wednesday', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('thursday', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('friday', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('saturday', '10', 2006)
  end
  
  def test_day_capitalized_short_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.cdates('Sun', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('Mon', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('Tue', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('Wed', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('Thu', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('Fri', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('Sat', '10', 2006)
  end
  
  def test_day_downcase_short_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.cdates('sun', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('mon', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('tue', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('wed', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('thu', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('fri', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('sat', '10', 2006)
  end
  
  def test_day_as_num_as_num_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.cdates(7, '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates(1, '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates(2, '10', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates(3, '10', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates(4, '10', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates(5, '10', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates(6, '10', 2006)
  end
  
  def test_day_as_num_as_string_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.cdates('7', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('1', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('2', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('3', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('4', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('5', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('6', '10', 2006)
  end
  
  def test_day_capitalized_long_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.cdates('Sunday', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('Monday', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('Tuesday', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('Wednesday', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('Thursday', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('Friday', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('Saturday', 'October', 2006)
  end
  
  def test_day_downcase_long_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.cdates('sunday', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('monday', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('tuesday', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('wednesday', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('thursday', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('friday', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('saturday', 'October', 2006)
  end
  
  def test_day_capitalized_short_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.cdates('Sun', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('Mon', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('Tue', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('Wed', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('Thu', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('Fri', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('Sat', 'October', 2006)
  end
  
  def test_day_downcase_short_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.cdates('sun', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('mon', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('tue', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('wed', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('thu', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('fri', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('sat', 'October', 2006)
  end
  
  def test_day_as_num_as_num_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.cdates(7, 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates(1, 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates(2, 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates(3, 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates(4, 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates(5, 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates(6, 'October', 2006)
  end
  
  def test_day_as_num_as_string_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.cdates('7', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('1', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('2', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('3', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('4', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('5', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('6', 'October', 2006)
  end
  
  def test_day_capitalized_long_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.cdates('Sunday', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('Monday', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('Tuesday', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('Wednesday', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('Thursday', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('Friday', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('Saturday', 'Oct', 2006)
  end
  
  def test_day_downcase_long_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.cdates('sunday', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('monday', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('tuesday', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('wednesday', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('thursday', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('friday', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('saturday', 'Oct', 2006)
  end
  
  def test_day_capitalized_short_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.cdates('Sun', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('Mon', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('Tue', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('Wed', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('Thu', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('Fri', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('Sat', 'Oct', 2006)
  end
  
  def test_day_downcase_short_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.cdates('sun', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('mon', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('tue', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('wed', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('thu', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('fri', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('sat', 'Oct', 2006)    
  end
  
  def test_day_as_num_as_num_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.cdates(7, 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates(1, 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates(2, 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates(3, 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates(4, 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates(5, 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates(6, 'Oct', 2006)
  end
  
  def test_day_as_num_as_string_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.cdates('7', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.cdates('1', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.cdates('2', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.cdates('3', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.cdates('4', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.cdates('5', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.cdates('6', 'Oct', 2006)
  end
  
  def test_crap
    assert_equal nil, Month.cdates('random')
    assert_equal nil, Month.cdates(32)
  end
  
end

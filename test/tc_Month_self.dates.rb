# tc_Month_self.dates

# 20110702
# 0.7.0

# Changes: 
# 1. Bumped version number to correspond with Month's overall version number.  

require 'Month/self.dates'

class TC_Month_self_dates < Test::Unit::TestCase
  
  def test_day_capitalized_long
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.dates('Sunday')
      assert_equal [2, 9, 16, 23, 30], Month.dates('Monday')
      assert_equal [3, 10, 17, 24, 31], Month.dates('Tuesday')
      assert_equal [4, 11, 18, 25], Month.dates('Wednesday')
      assert_equal [5, 12, 19, 26], Month.dates('Thursday')
      assert_equal [6, 13, 20, 27], Month.dates('Friday')
      assert_equal [7, 14, 21, 28], Month.dates('Saturday')
    end
  end
  
  def test_day_downcase_long
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.dates('sunday')
      assert_equal [2, 9, 16, 23, 30], Month.dates('monday')
      assert_equal [3, 10, 17, 24, 31], Month.dates('tuesday')
      assert_equal [4, 11, 18, 25], Month.dates('wednesday')
      assert_equal [5, 12, 19, 26], Month.dates('thursday')
      assert_equal [6, 13, 20, 27], Month.dates('friday')
      assert_equal [7, 14, 21, 28], Month.dates('saturday')
    end
  end
  
  def test_day_capitalized_short
    if Date.today.year == 2006 && Date.today.month == 10    
      assert_equal [1, 8, 15, 22, 29], Month.dates('Sun')
      assert_equal [2, 9, 16, 23, 30], Month.dates('Mon')
      assert_equal [3, 10, 17, 24, 31], Month.dates('Tue')
      assert_equal [4, 11, 18, 25], Month.dates('Wed')
      assert_equal [5, 12, 19, 26], Month.dates('Thu')
      assert_equal [6, 13, 20, 27], Month.dates('Fri')
      assert_equal [7, 14, 21, 28], Month.dates('Sat')
    end
  end
  
  def test_day_downcase_short
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.dates('sun')
      assert_equal [2, 9, 16, 23, 30], Month.dates('mon')
      assert_equal [3, 10, 17, 24, 31], Month.dates('tue')
      assert_equal [4, 11, 18, 25], Month.dates('wed')
      assert_equal [5, 12, 19, 26], Month.dates('thu')
      assert_equal [6, 13, 20, 27], Month.dates('fri')
      assert_equal [7, 14, 21, 28], Month.dates('sat')
    end
  end
  
  def test_day_as_num_as_num
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.dates(0)
      assert_equal [2, 9, 16, 23, 30], Month.dates(1)
      assert_equal [3, 10, 17, 24, 31], Month.dates(2)
      assert_equal [4, 11, 18, 25], Month.dates(3)
      assert_equal [5, 12, 19, 26], Month.dates(4)
      assert_equal [6, 13, 20, 27], Month.dates(5)
      assert_equal [7, 14, 21, 28], Month.dates(6)
    end
  end
  
  def test_day_as_num_as_string
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal [1, 8, 15, 22, 29], Month.dates('0')
      assert_equal [2, 9, 16, 23, 30], Month.dates('1')
      assert_equal [3, 10, 17, 24, 31], Month.dates('2')
      assert_equal [4, 11, 18, 25], Month.dates('3')
      assert_equal [5, 12, 19, 26], Month.dates('4')
      assert_equal [6, 13, 20, 27], Month.dates('5')
      assert_equal [7, 14, 21, 28], Month.dates('6')
    end
  end
  
  def test_day_capitalized_long_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sunday', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('Monday', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tuesday', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.dates('Wednesday', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.dates('Thursday', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.dates('Friday', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.dates('Saturday', 10, 2006)
  end
  
  def test_day_downcase_long_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates('sunday', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('monday', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('tuesday', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.dates('wednesday', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.dates('thursday', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.dates('friday', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.dates('saturday', 10, 2006)
  end
  
  def test_day_capitalized_short_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sun', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('Mon', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tue', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.dates('Wed', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.dates('Thu', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.dates('Fri', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.dates('Sat', 10, 2006)
  end
  
  def test_day_downcase_short_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates('sun', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('mon', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('tue', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.dates('wed', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.dates('thu', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.dates('fri', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.dates('sat', 10, 2006)
  end
  
  def test_day_as_num_as_num_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(0, 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates(1, 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2, 10, 2006)
    assert_equal [4, 11, 18, 25], Month.dates(3, 10, 2006)
    assert_equal [5, 12, 19, 26], Month.dates(4, 10, 2006)
    assert_equal [6, 13, 20, 27], Month.dates(5, 10, 2006)
    assert_equal [7, 14, 21, 28], Month.dates(6, 10, 2006)
  end
  
  def test_day_as_num_as_string_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates('0', 10, 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('1', 10, 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('2', 10, 2006)
    assert_equal [4, 11, 18, 25], Month.dates('3', 10, 2006)
    assert_equal [5, 12, 19, 26], Month.dates('4', 10, 2006)
    assert_equal [6, 13, 20, 27], Month.dates('5', 10, 2006)
    assert_equal [7, 14, 21, 28], Month.dates('6', 10, 2006)
  end
  
  def test_day_capitalized_long_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sunday', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('Monday', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tuesday', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('Wednesday', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('Thursday', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('Friday', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('Saturday', '10', 2006)
  end
  
  def test_day_downcase_long_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates('sunday', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('monday', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('tuesday', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('wednesday', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('thursday', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('friday', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('saturday', '10', 2006)
  end
  
  def test_day_capitalized_short_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sun', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('Mon', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tue', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('Wed', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('Thu', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('Fri', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('Sat', '10', 2006)
  end
  
  def test_day_downcase_short_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates('sun', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('mon', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('tue', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('wed', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('thu', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('fri', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('sat', '10', 2006)
  end
  
  def test_day_as_num_as_num_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates(0, '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates(1, '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2, '10', 2006)
    assert_equal [4, 11, 18, 25], Month.dates(3, '10', 2006)
    assert_equal [5, 12, 19, 26], Month.dates(4, '10', 2006)
    assert_equal [6, 13, 20, 27], Month.dates(5, '10', 2006)
    assert_equal [7, 14, 21, 28], Month.dates(6, '10', 2006)
  end
  
  def test_day_as_num_as_string_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates('0', '10', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('1', '10', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('2', '10', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('3', '10', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('4', '10', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('5', '10', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('6', '10', 2006)
  end
  
  def test_day_capitalized_long_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sunday', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('Monday', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tuesday', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('Wednesday', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('Thursday', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('Friday', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('Saturday', 'October', 2006)
  end
  
  def test_day_downcase_long_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates('sunday', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('monday', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('tuesday', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('wednesday', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('thursday', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('friday', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('saturday', 'October', 2006)
  end
  
  def test_day_capitalized_short_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sun', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('Mon', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tue', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('Wed', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('Thu', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('Fri', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('Sat', 'October', 2006)
  end
  
  def test_day_downcase_short_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates('sun', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('mon', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('tue', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('wed', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('thu', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('fri', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('sat', 'October', 2006)
  end
  
  def test_day_as_num_as_num_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(0, 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates(1, 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2, 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.dates(3, 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.dates(4, 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.dates(5, 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.dates(6, 'October', 2006)
  end
  
  def test_day_as_num_as_string_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates('0', 'October', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('1', 'October', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('2', 'October', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('3', 'October', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('4', 'October', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('5', 'October', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('6', 'October', 2006)
  end
  
  def test_day_capitalized_long_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sunday', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('Monday', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tuesday', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('Wednesday', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('Thursday', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('Friday', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('Saturday', 'Oct', 2006)
  end
  
  def test_day_downcase_long_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates('sunday', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('monday', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('tuesday', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('wednesday', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('thursday', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('friday', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('saturday', 'Oct', 2006)
  end
  
  def test_day_capitalized_short_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates('Sun', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('Mon', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('Tue', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('Wed', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('Thu', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('Fri', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('Sat', 'Oct', 2006)
  end
  
  def test_day_downcase_short_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates('sun', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('mon', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('tue', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('wed', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('thu', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('fri', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('sat', 'Oct', 2006)
  end
  
  def test_day_as_num_as_num_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(0, 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates(1, 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2, 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.dates(3, 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.dates(4, 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.dates(5, 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.dates(6, 'Oct', 2006)
  end
  
  def test_day_as_num_as_string_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates('0', 'Oct', 2006)
    assert_equal [2, 9, 16, 23, 30], Month.dates('1', 'Oct', 2006)
    assert_equal [3, 10, 17, 24, 31], Month.dates('2', 'Oct', 2006)
    assert_equal [4, 11, 18, 25], Month.dates('3', 'Oct', 2006)
    assert_equal [5, 12, 19, 26], Month.dates('4', 'Oct', 2006)
    assert_equal [6, 13, 20, 27], Month.dates('5', 'Oct', 2006)
    assert_equal [7, 14, 21, 28], Month.dates('6', 'Oct', 2006)
  end
  
  def test_crap
    assert_equal nil, Month.dates('random')
    assert_equal nil, Month.dates(32)
  end
  
end

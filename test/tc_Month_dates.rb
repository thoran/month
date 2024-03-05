# tc_Month_dates

# 20110702
# 0.7.0

require 'Month/dates'

class TC_Month_dates < Test::Unit::TestCase
  
  def test_dates
    assert_equal [2, 9, 16, 23, 30], Month.new(1, 2006).dates('Monday')
    assert_equal [3, 10, 17, 24, 31], Month.new(1, 2006).dates('Tuesday')
    assert_equal [4, 11, 18, 25], Month.new(1, 2006).dates('Wednesday')
    assert_equal [5, 12, 19, 26], Month.new(1, 2006).dates('Thursday')
    assert_equal [6, 13, 20, 27], Month.new(1, 2006).dates('Friday')
    assert_equal [7, 14, 21, 28], Month.new(1, 2006).dates('Saturday')
    assert_equal [1, 8, 15, 22, 29], Month.new(1, 2006).dates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(2, 2006).dates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(2, 2006).dates('Tuesday')
    assert_equal [1, 8, 15, 22], Month.new(2, 2006).dates('Wednesday')
    assert_equal [2, 9, 16, 23], Month.new(2, 2006).dates('Thursday')
    assert_equal [3, 10, 17, 24], Month.new(2, 2006).dates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(2, 2006).dates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(2, 2006).dates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(3, 2006).dates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(3, 2006).dates('Tuesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(3, 2006).dates('Wednesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(3, 2006).dates('Thursday')
    assert_equal [3, 10, 17, 24, 31], Month.new(3, 2006).dates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(3, 2006).dates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(3, 2006).dates('Sunday')
    
    assert_equal [3, 10, 17, 24], Month.new(4, 2006).dates('Monday')
    assert_equal [4, 11, 18, 25], Month.new(4, 2006).dates('Tuesday')
    assert_equal [5, 12, 19, 26], Month.new(4, 2006).dates('Wednesday')
    assert_equal [6, 13, 20, 27], Month.new(4, 2006).dates('Thursday')
    assert_equal [7, 14, 21, 28], Month.new(4, 2006).dates('Friday')
    assert_equal [1, 8, 15, 22, 29], Month.new(4, 2006).dates('Saturday')
    assert_equal [2, 9, 16, 23, 30], Month.new(4, 2006).dates('Sunday')
    
    assert_equal [1, 8, 15, 22, 29], Month.new(5, 2006).dates('Monday')
    assert_equal [2, 9, 16, 23, 30], Month.new(5, 2006).dates('Tuesday')
    assert_equal [3, 10, 17, 24, 31], Month.new(5, 2006).dates('Wednesday')
    assert_equal [4, 11, 18, 25], Month.new(5, 2006).dates('Thursday')
    assert_equal [5, 12, 19, 26], Month.new(5, 2006).dates('Friday')
    assert_equal [6, 13, 20, 27], Month.new(5, 2006).dates('Saturday')
    assert_equal [7, 14, 21, 28], Month.new(5, 2006).dates('Sunday')
    
    assert_equal [5, 12, 19, 26], Month.new(6, 2006).dates('Monday')
    assert_equal [6, 13, 20, 27], Month.new(6, 2006).dates('Tuesday')
    assert_equal [7, 14, 21, 28], Month.new(6, 2006).dates('Wednesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(6, 2006).dates('Thursday')
    assert_equal [2, 9, 16, 23, 30], Month.new(6, 2006).dates('Friday')
    assert_equal [3, 10, 17, 24], Month.new(6, 2006).dates('Saturday')
    assert_equal [4, 11, 18, 25], Month.new(6, 2006).dates('Sunday')
    
    assert_equal [3, 10, 17, 24, 31], Month.new(7, 2006).dates('Monday')
    assert_equal [4, 11, 18, 25], Month.new(7, 2006).dates('Tuesday')
    assert_equal [5, 12, 19, 26], Month.new(7, 2006).dates('Wednesday')
    assert_equal [6, 13, 20, 27], Month.new(7, 2006).dates('Thursday')
    assert_equal [7, 14, 21, 28], Month.new(7, 2006).dates('Friday')
    assert_equal [1, 8, 15, 22, 29], Month.new(7, 2006).dates('Saturday')
    assert_equal [2, 9, 16, 23, 30], Month.new(7, 2006).dates('Sunday')
    
    assert_equal [7, 14, 21, 28], Month.new(8, 2006).dates('Monday')
    assert_equal [1, 8, 15, 22, 29], Month.new(8, 2006).dates('Tuesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(8, 2006).dates('Wednesday')
    assert_equal [3, 10, 17, 24, 31], Month.new(8, 2006).dates('Thursday')
    assert_equal [4, 11, 18, 25], Month.new(8, 2006).dates('Friday')
    assert_equal [5, 12, 19, 26], Month.new(8, 2006).dates('Saturday')
    assert_equal [6, 13, 20, 27], Month.new(8, 2006).dates('Sunday')
    
    assert_equal [4, 11, 18, 25], Month.new(9, 2006).dates('Monday')
    assert_equal [5, 12, 19, 26], Month.new(9, 2006).dates('Tuesday')
    assert_equal [6, 13, 20, 27], Month.new(9, 2006).dates('Wednesday')
    assert_equal [7, 14, 21, 28], Month.new(9, 2006).dates('Thursday')
    assert_equal [1, 8, 15, 22, 29], Month.new(9, 2006).dates('Friday')
    assert_equal [2, 9, 16, 23, 30], Month.new(9, 2006).dates('Saturday')
    assert_equal [3, 10, 17, 24], Month.new(9, 2006).dates('Sunday')
    
    assert_equal [2, 9, 16, 23, 30], Month.new(10, 2006).dates('Monday')
    assert_equal [3, 10, 17, 24, 31], Month.new(10, 2006).dates('Tuesday')
    assert_equal [4, 11, 18, 25], Month.new(10, 2006).dates('Wednesday')
    assert_equal [5, 12, 19, 26], Month.new(10, 2006).dates('Thursday')
    assert_equal [6, 13, 20, 27], Month.new(10, 2006).dates('Friday')
    assert_equal [7, 14, 21, 28], Month.new(10, 2006).dates('Saturday')
    assert_equal [1, 8, 15, 22, 29], Month.new(10, 2006).dates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(11, 2006).dates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(11, 2006).dates('Tuesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(11, 2006).dates('Wednesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(11, 2006).dates('Thursday')
    assert_equal [3, 10, 17, 24], Month.new(11, 2006).dates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(11, 2006).dates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(11, 2006).dates('Sunday')
    
    assert_equal [4, 11, 18, 25], Month.new(12, 2006).dates('Monday')
    assert_equal [5, 12, 19, 26], Month.new(12, 2006).dates('Tuesday')
    assert_equal [6, 13, 20, 27], Month.new(12, 2006).dates('Wednesday')
    assert_equal [7, 14, 21, 28], Month.new(12, 2006).dates('Thursday')
    assert_equal [1, 8, 15, 22, 29], Month.new(12, 2006).dates('Friday')
    assert_equal [2, 9, 16, 23, 30], Month.new(12, 2006).dates('Saturday')
    assert_equal [3, 10, 17, 24, 31], Month.new(12, 2006).dates('Sunday')
  end
  
end

# test/tc_Month_self.wday.rb

class TC_Month_self_wday < Minitest::Test
    
  def test_num_as_num
    assert_equal 0, Month.wday(1, 10, 2006)
    assert_equal 1, Month.wday(2, 10, 2006)
    assert_equal 2, Month.wday(3, 10, 2006)
    assert_equal 3, Month.wday(4, 10, 2006)
    assert_equal 4, Month.wday(5, 10, 2006)
    assert_equal 5, Month.wday(6, 10, 2006)
    assert_equal 6, Month.wday(7, 10, 2006)
    assert_equal 0, Month.wday(8, 10, 2006)
    assert_equal 1, Month.wday(9, 10, 2006)
    assert_equal 2, Month.wday(10, 10, 2006)
    assert_equal 3, Month.wday(11, 10, 2006)
    assert_equal 4, Month.wday(12, 10, 2006)
    assert_equal 5, Month.wday(13, 10, 2006)
    assert_equal 6, Month.wday(14, 10, 2006)
    assert_equal 0, Month.wday(15, 10, 2006)
    assert_equal 1, Month.wday(16, 10, 2006)
    assert_equal 2, Month.wday(17, 10, 2006)
    assert_equal 3, Month.wday(18, 10, 2006)
    assert_equal 4, Month.wday(19, 10, 2006)
    assert_equal 5, Month.wday(20, 10, 2006)
    assert_equal 6, Month.wday(21, 10, 2006)
    assert_equal 0, Month.wday(22, 10, 2006)
    assert_equal 1, Month.wday(23, 10, 2006)
    assert_equal 2, Month.wday(24, 10, 2006)
    assert_equal 3, Month.wday(25, 10, 2006)
    assert_equal 4, Month.wday(26, 10, 2006)
    assert_equal 5, Month.wday(27, 10, 2006)
    assert_equal 6, Month.wday(28, 10, 2006)
    assert_equal 0, Month.wday(29, 10, 2006)
    assert_equal 1, Month.wday(30, 10, 2006)
    assert_equal 2, Month.wday(31, 10, 2006)    
    assert_equal 3, Month.wday(1, 11, 2006)    
  end
  
  def test_num_as_string
    assert_equal 0, Month.wday('1', '10', '2006')
    assert_equal 1, Month.wday('2', '10', '2006')
    assert_equal 2, Month.wday('3', '10', '2006')
    assert_equal 3, Month.wday('4', '10', '2006')
    assert_equal 4, Month.wday('5', '10', '2006')
    assert_equal 5, Month.wday('6', '10', '2006')
    assert_equal 6, Month.wday('7', '10', '2006')
    assert_equal 0, Month.wday('8', '10', '2006')
    assert_equal 1, Month.wday('9', '10', '2006')
    assert_equal 2, Month.wday('10', '10', '2006')
    assert_equal 3, Month.wday('11', '10', '2006')
    assert_equal 4, Month.wday('12', '10', '2006')
    assert_equal 5, Month.wday('13', '10', '2006')
    assert_equal 6, Month.wday('14', '10', '2006')
    assert_equal 0, Month.wday('15', '10', '2006')
    assert_equal 1, Month.wday('16', '10', '2006')
    assert_equal 2, Month.wday('17', '10', '2006')
    assert_equal 3, Month.wday('18', '10', '2006')
    assert_equal 4, Month.wday('19', '10', '2006')
    assert_equal 5, Month.wday('20', '10', '2006')
    assert_equal 6, Month.wday('21', '10', '2006')
    assert_equal 0, Month.wday('22', '10', '2006')
    assert_equal 1, Month.wday('23', '10', '2006')
    assert_equal 2, Month.wday('24', '10', '2006')
    assert_equal 3, Month.wday('25', '10', '2006')
    assert_equal 4, Month.wday('26', '10', '2006')
    assert_equal 5, Month.wday('27', '10', '2006')
    assert_equal 6, Month.wday('28', '10', '2006')
    assert_equal 0, Month.wday('29', '10', '2006')
    assert_equal 1, Month.wday('30', '10', '2006')
    assert_equal 2, Month.wday('31', '10', '2006')    
    assert_equal 3, Month.wday('1', '11', '2006')    
  end
  
  def test_num_as_num_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 0, Month.wday(1)
      assert_equal 1, Month.wday(2)
      assert_equal 2, Month.wday(3)
      assert_equal 3, Month.wday(4)
      assert_equal 4, Month.wday(5)
      assert_equal 5, Month.wday(6)
      assert_equal 6, Month.wday(7)
      assert_equal 0, Month.wday(8)
      assert_equal 1, Month.wday(9)
      assert_equal 2, Month.wday(10)
      assert_equal 3, Month.wday(11)
      assert_equal 4, Month.wday(12)
      assert_equal 5, Month.wday(13)
      assert_equal 6, Month.wday(14)
      assert_equal 0, Month.wday(15)
      assert_equal 1, Month.wday(16)
      assert_equal 2, Month.wday(17)
      assert_equal 3, Month.wday(18)
      assert_equal 4, Month.wday(19)
      assert_equal 5, Month.wday(20)
      assert_equal 6, Month.wday(21)
      assert_equal 0, Month.wday(22)
      assert_equal 1, Month.wday(23)
      assert_equal 2, Month.wday(24)
      assert_equal 3, Month.wday(25)
      assert_equal 4, Month.wday(26)
      assert_equal 5, Month.wday(27)
      assert_equal 6, Month.wday(28)
      assert_equal 0, Month.wday(29)
      assert_equal 1, Month.wday(30)
      assert_equal 2, Month.wday(31)
    end
  end
  
  def test_num_as_string_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10    
      assert_equal 0, Month.wday('1')
      assert_equal 1, Month.wday('2')
      assert_equal 2, Month.wday('3')
      assert_equal 3, Month.wday('4')
      assert_equal 4, Month.wday('5')
      assert_equal 5, Month.wday('6')
      assert_equal 6, Month.wday('7')
      assert_equal 0, Month.wday('8')
      assert_equal 1, Month.wday('9')
      assert_equal 2, Month.wday('10')
      assert_equal 3, Month.wday('11')
      assert_equal 4, Month.wday('12')
      assert_equal 5, Month.wday('13')
      assert_equal 6, Month.wday('14')
      assert_equal 0, Month.wday('15')
      assert_equal 1, Month.wday('16')
      assert_equal 2, Month.wday('17')
      assert_equal 3, Month.wday('18')
      assert_equal 4, Month.wday('19')
      assert_equal 5, Month.wday('20')
      assert_equal 6, Month.wday('21')
      assert_equal 0, Month.wday('22')
      assert_equal 1, Month.wday('23')
      assert_equal 2, Month.wday('24')
      assert_equal 3, Month.wday('25')
      assert_equal 4, Month.wday('26')
      assert_equal 5, Month.wday('27')
      assert_equal 6, Month.wday('28')
      assert_equal 0, Month.wday('29')
      assert_equal 1, Month.wday('30')
      assert_equal 2, Month.wday('31')
    end
  end
  
  def test_num_as_num_with_long_month
    assert_equal 0, Month.wday(1, 'October', 2006)
    assert_equal 1, Month.wday(2, 'October', 2006)
    assert_equal 2, Month.wday(3, 'October', 2006)
    assert_equal 3, Month.wday(4, 'October', 2006)
    assert_equal 4, Month.wday(5, 'October', 2006)
    assert_equal 5, Month.wday(6, 'October', 2006)
    assert_equal 6, Month.wday(7, 'October', 2006)
    assert_equal 0, Month.wday(8, 'October', 2006)
    assert_equal 1, Month.wday(9, 'October', 2006)
    assert_equal 2, Month.wday(10, 'October', 2006)
    assert_equal 3, Month.wday(11, 'October', 2006)
    assert_equal 4, Month.wday(12, 'October', 2006)
    assert_equal 5, Month.wday(13, 'October', 2006)
    assert_equal 6, Month.wday(14, 'October', 2006)
    assert_equal 0, Month.wday(15, 'October', 2006)
    assert_equal 1, Month.wday(16, 'October', 2006)
    assert_equal 2, Month.wday(17, 'October', 2006)
    assert_equal 3, Month.wday(18, 'October', 2006)
    assert_equal 4, Month.wday(19, 'October', 2006)
    assert_equal 5, Month.wday(20, 'October', 2006)
    assert_equal 6, Month.wday(21, 'October', 2006)
    assert_equal 0, Month.wday(22, 'October', 2006)
    assert_equal 1, Month.wday(23, 'October', 2006)
    assert_equal 2, Month.wday(24, 'October', 2006)
    assert_equal 3, Month.wday(25, 'October', 2006)
    assert_equal 4, Month.wday(26, 'October', 2006)
    assert_equal 5, Month.wday(27, 'October', 2006)
    assert_equal 6, Month.wday(28, 'October', 2006)
    assert_equal 0, Month.wday(29, 'October', 2006)
    assert_equal 1, Month.wday(30, 'October', 2006)
    assert_equal 2, Month.wday(31, 'October', 2006)    
    assert_equal 3, Month.wday(1, 'November', 2006)    
  end
  
  def test_num_as_num_with_short_month
    assert_equal 0, Month.wday(1, 'Oct', 2006)
    assert_equal 1, Month.wday(2, 'Oct', 2006)
    assert_equal 2, Month.wday(3, 'Oct', 2006)
    assert_equal 3, Month.wday(4, 'Oct', 2006)
    assert_equal 4, Month.wday(5, 'Oct', 2006)
    assert_equal 5, Month.wday(6, 'Oct', 2006)
    assert_equal 6, Month.wday(7, 'Oct', 2006)
    assert_equal 0, Month.wday(8, 'Oct', 2006)
    assert_equal 1, Month.wday(9, 'Oct', 2006)
    assert_equal 2, Month.wday(10, 'Oct', 2006)
    assert_equal 3, Month.wday(11, 'Oct', 2006)
    assert_equal 4, Month.wday(12, 'Oct', 2006)
    assert_equal 5, Month.wday(13, 'Oct', 2006)
    assert_equal 6, Month.wday(14, 'Oct', 2006)
    assert_equal 0, Month.wday(15, 'Oct', 2006)
    assert_equal 1, Month.wday(16, 'Oct', 2006)
    assert_equal 2, Month.wday(17, 'Oct', 2006)
    assert_equal 3, Month.wday(18, 'Oct', 2006)
    assert_equal 4, Month.wday(19, 'Oct', 2006)
    assert_equal 5, Month.wday(20, 'Oct', 2006)
    assert_equal 6, Month.wday(21, 'Oct', 2006)
    assert_equal 0, Month.wday(22, 'Oct', 2006)
    assert_equal 1, Month.wday(23, 'Oct', 2006)
    assert_equal 2, Month.wday(24, 'Oct', 2006)
    assert_equal 3, Month.wday(25, 'Oct', 2006)
    assert_equal 4, Month.wday(26, 'Oct', 2006)
    assert_equal 5, Month.wday(27, 'Oct', 2006)
    assert_equal 6, Month.wday(28, 'Oct', 2006)
    assert_equal 0, Month.wday(29, 'Oct', 2006)
    assert_equal 1, Month.wday(30, 'Oct', 2006)
    assert_equal 2, Month.wday(31, 'Oct', 2006)    
    assert_equal 3, Month.wday(1, 'Nov', 2006)    
  end
  
  def test_num_as_string_with_long_month
    assert_equal 0, Month.wday('1', 'October', '2006')
    assert_equal 1, Month.wday('2', 'October', '2006')
    assert_equal 2, Month.wday('3', 'October', '2006')
    assert_equal 3, Month.wday('4', 'October', '2006')
    assert_equal 4, Month.wday('5', 'October', '2006')
    assert_equal 5, Month.wday('6', 'October', '2006')
    assert_equal 6, Month.wday('7', 'October', '2006')
    assert_equal 0, Month.wday('8', 'October', '2006')
    assert_equal 1, Month.wday('9', 'October', '2006')
    assert_equal 2, Month.wday('10', 'October', '2006')
    assert_equal 3, Month.wday('11', 'October', '2006')
    assert_equal 4, Month.wday('12', 'October', '2006')
    assert_equal 5, Month.wday('13', 'October', '2006')
    assert_equal 6, Month.wday('14', 'October', '2006')
    assert_equal 0, Month.wday('15', 'October', '2006')
    assert_equal 1, Month.wday('16', 'October', '2006')
    assert_equal 2, Month.wday('17', 'October', '2006')
    assert_equal 3, Month.wday('18', 'October', '2006')
    assert_equal 4, Month.wday('19', 'October', '2006')
    assert_equal 5, Month.wday('20', 'October', '2006')
    assert_equal 6, Month.wday('21', 'October', '2006')
    assert_equal 0, Month.wday('22', 'October', '2006')
    assert_equal 1, Month.wday('23', 'October', '2006')
    assert_equal 2, Month.wday('24', 'October', '2006')
    assert_equal 3, Month.wday('25', 'October', '2006')
    assert_equal 4, Month.wday('26', 'October', '2006')
    assert_equal 5, Month.wday('27', 'October', '2006')
    assert_equal 6, Month.wday('28', 'October', '2006')
    assert_equal 0, Month.wday('29', 'October', '2006')
    assert_equal 1, Month.wday('30', 'October', '2006')
    assert_equal 2, Month.wday('31', 'October', '2006')    
    assert_equal 3, Month.wday('1', 'November', '2006')    
  end
  
  def test_num_as_string_with_short_month
    assert_equal 0, Month.wday('1', 'Oct', '2006')
    assert_equal 1, Month.wday('2', 'Oct', '2006')
    assert_equal 2, Month.wday('3', 'Oct', '2006')
    assert_equal 3, Month.wday('4', 'Oct', '2006')
    assert_equal 4, Month.wday('5', 'Oct', '2006')
    assert_equal 5, Month.wday('6', 'Oct', '2006')
    assert_equal 6, Month.wday('7', 'Oct', '2006')
    assert_equal 0, Month.wday('8', 'Oct', '2006')
    assert_equal 1, Month.wday('9', 'Oct', '2006')
    assert_equal 2, Month.wday('10', 'Oct', '2006')
    assert_equal 3, Month.wday('11', 'Oct', '2006')
    assert_equal 4, Month.wday('12', 'Oct', '2006')
    assert_equal 5, Month.wday('13', 'Oct', '2006')
    assert_equal 6, Month.wday('14', 'Oct', '2006')
    assert_equal 0, Month.wday('15', 'Oct', '2006')
    assert_equal 1, Month.wday('16', 'Oct', '2006')
    assert_equal 2, Month.wday('17', 'Oct', '2006')
    assert_equal 3, Month.wday('18', 'Oct', '2006')
    assert_equal 4, Month.wday('19', 'Oct', '2006')
    assert_equal 5, Month.wday('20', 'Oct', '2006')
    assert_equal 6, Month.wday('21', 'Oct', '2006')
    assert_equal 0, Month.wday('22', 'Oct', '2006')
    assert_equal 1, Month.wday('23', 'Oct', '2006')
    assert_equal 2, Month.wday('24', 'Oct', '2006')
    assert_equal 3, Month.wday('25', 'Oct', '2006')
    assert_equal 4, Month.wday('26', 'Oct', '2006')
    assert_equal 5, Month.wday('27', 'Oct', '2006')
    assert_equal 6, Month.wday('28', 'Oct', '2006')
    assert_equal 0, Month.wday('29', 'Oct', '2006')
    assert_equal 1, Month.wday('30', 'Oct', '2006')
    assert_equal 2, Month.wday('31', 'Oct', '2006')    
    assert_equal 3, Month.wday('1', 'Nov', '2006')    
  end
  
  def test_crap
    assert_nil Month.wday('random')
    assert_nil Month.wday(32)
  end
  
end
#!/usr/bin/env ruby
#
# Test case: Month#to_short.  
# 
# 20061001
# 0.0.1
#
# Changes: 
# 1. I didn't test for different capitalizations before and it was only because of one failure that I picked up the failings of version 0.0.5 of the Month class.  

class TC_Month_To_Short < Test::Unit::TestCase
  
  def test_long_capitalized
    assert_equal Month.to_short('January'), 'Jan'
    assert_equal Month.to_short('February'), 'Feb'
    assert_equal Month.to_short('March'), 'Mar'
    assert_equal Month.to_short('April'), 'Apr'
    assert_equal Month.to_short('May'), 'May'
    assert_equal Month.to_short('June'), 'Jun'
    assert_equal Month.to_short('July'), 'Jul'
    assert_equal Month.to_short('August'), 'Aug'
    assert_equal Month.to_short('September'), 'Sep'
    assert_equal Month.to_short('October'), 'Oct'
    assert_equal Month.to_short('November'), 'Nov'
    assert_equal Month.to_short('December'), 'Dec'
  end
  
  def test_long_downcase
    assert_equal Month.to_short('january'), 'Jan'
    assert_equal Month.to_short('february'), 'Feb'
    assert_equal Month.to_short('march'), 'Mar'
    assert_equal Month.to_short('april'), 'Apr'
    assert_equal Month.to_short('may'), 'May'
    assert_equal Month.to_short('june'), 'Jun'
    assert_equal Month.to_short('july'), 'Jul'
    assert_equal Month.to_short('august'), 'Aug'
    assert_equal Month.to_short('september'), 'Sep'
    assert_equal Month.to_short('october'), 'Oct'
    assert_equal Month.to_short('november'), 'Nov'
    assert_equal Month.to_short('december'), 'Dec'
  end
  
  def test_short_capitalized
    assert_equal Month.to_short('Jan'), 'Jan'
    assert_equal Month.to_short('Feb'), 'Feb'
    assert_equal Month.to_short('Mar'), 'Mar'
    assert_equal Month.to_short('Apr'), 'Apr'
    assert_equal Month.to_short('May'), 'May'
    assert_equal Month.to_short('Jun'), 'Jun'
    assert_equal Month.to_short('Jul'), 'Jul'
    assert_equal Month.to_short('Aug'), 'Aug'
    assert_equal Month.to_short('Sep'), 'Sep'
    assert_equal Month.to_short('Oct'), 'Oct'
    assert_equal Month.to_short('Nov'), 'Nov'
    assert_equal Month.to_short('Dec'), 'Dec'
  end
  
  def test_short_downcase
    assert_equal Month.to_short('jan'), 'Jan'
    assert_equal Month.to_short('feb'), 'Feb'
    assert_equal Month.to_short('mar'), 'Mar'
    assert_equal Month.to_short('apr'), 'Apr'
    assert_equal Month.to_short('may'), 'May'
    assert_equal Month.to_short('jun'), 'Jun'
    assert_equal Month.to_short('jul'), 'Jul'
    assert_equal Month.to_short('aug'), 'Aug'
    assert_equal Month.to_short('sep'), 'Sep'
    assert_equal Month.to_short('oct'), 'Oct'
    assert_equal Month.to_short('nov'), 'Nov'
    assert_equal Month.to_short('dec'), 'Dec'
  end
  
  def test_num_as_num
    assert_equal Month.to_short(1), 'Jan'
    assert_equal Month.to_short(2), 'Feb'
    assert_equal Month.to_short(3), 'Mar'
    assert_equal Month.to_short(4), 'Apr'
    assert_equal Month.to_short(5), 'May'
    assert_equal Month.to_short(6), 'Jun'
    assert_equal Month.to_short(7), 'Jul'
    assert_equal Month.to_short(8), 'Aug'
    assert_equal Month.to_short(9), 'Sep'
    assert_equal Month.to_short(10), 'Oct'
    assert_equal Month.to_short(11), 'Nov'
    assert_equal Month.to_short(12), 'Dec'
  end
  
  def test_num_as_string
    assert_equal Month.to_short('1'), 'Jan'
    assert_equal Month.to_short('2'), 'Feb'
    assert_equal Month.to_short('3'), 'Mar'
    assert_equal Month.to_short('4'), 'Apr'
    assert_equal Month.to_short('5'), 'May'
    assert_equal Month.to_short('6'), 'Jun'
    assert_equal Month.to_short('7'), 'Jul'
    assert_equal Month.to_short('8'), 'Aug'
    assert_equal Month.to_short('9'), 'Sep'
    assert_equal Month.to_short('10'), 'Oct'
    assert_equal Month.to_short('11'), 'Nov'
    assert_equal Month.to_short('12'), 'Dec'
  end

  def test_crap
    assert_equal Month.to_short('random'), nil
    assert_equal Month.to_short(13), nil
  end
      
end

#!/usr/bin/env ruby
#
# Test case: Month#to_num.  
# 
# 20061001
# 0.0.1
#
# Changes: 
# 1. I didn't test for different capitalizations before and it was only because of one failure that I picked up the failings of version 0.0.5 of the Month class.  

class TC_Month_To_Num < Test::Unit::TestCase
  
  def test_long_capitalized
    assert_equal Month.to_num('January'), 1
    assert_equal Month.to_num('February'), 2
    assert_equal Month.to_num('March'), 3
    assert_equal Month.to_num('April'), 4
    assert_equal Month.to_num('May'), 5
    assert_equal Month.to_num('June'), 6
    assert_equal Month.to_num('July'), 7
    assert_equal Month.to_num('August'), 8
    assert_equal Month.to_num('September'), 9
    assert_equal Month.to_num('October'), 10
    assert_equal Month.to_num('November'), 11
    assert_equal Month.to_num('December'), 12
  end
  
  def test_long_downcase
    assert_equal Month.to_num('january'), 1
    assert_equal Month.to_num('february'), 2
    assert_equal Month.to_num('march'), 3
    assert_equal Month.to_num('april'), 4
    assert_equal Month.to_num('may'), 5
    assert_equal Month.to_num('june'), 6
    assert_equal Month.to_num('july'), 7
    assert_equal Month.to_num('august'), 8
    assert_equal Month.to_num('september'), 9
    assert_equal Month.to_num('october'), 10
    assert_equal Month.to_num('november'), 11
    assert_equal Month.to_num('december'), 12
  end
  
  def test_short_capitalized
    assert_equal Month.to_num('Jan'), 1
    assert_equal Month.to_num('Feb'), 2
    assert_equal Month.to_num('Mar'), 3
    assert_equal Month.to_num('Apr'), 4
    assert_equal Month.to_num('May'), 5
    assert_equal Month.to_num('Jun'), 6
    assert_equal Month.to_num('Jul'), 7
    assert_equal Month.to_num('Aug'), 8
    assert_equal Month.to_num('Sep'), 9
    assert_equal Month.to_num('Oct'), 10
    assert_equal Month.to_num('Nov'), 11
    assert_equal Month.to_num('Dec'), 12
  end
  
  def test_short_downcase
    assert_equal Month.to_num('jan'), 1
    assert_equal Month.to_num('feb'), 2
    assert_equal Month.to_num('mar'), 3
    assert_equal Month.to_num('apr'), 4
    assert_equal Month.to_num('may'), 5
    assert_equal Month.to_num('jun'), 6
    assert_equal Month.to_num('jul'), 7
    assert_equal Month.to_num('aug'), 8
    assert_equal Month.to_num('sep'), 9
    assert_equal Month.to_num('oct'), 10
    assert_equal Month.to_num('nov'), 11
    assert_equal Month.to_num('dec'), 12
  end
  
  def test_num_as_num
    assert_equal Month.to_num(1), 1
    assert_equal Month.to_num(2), 2
    assert_equal Month.to_num(3), 3
    assert_equal Month.to_num(4), 4
    assert_equal Month.to_num(5), 5
    assert_equal Month.to_num(6), 6
    assert_equal Month.to_num(7), 7
    assert_equal Month.to_num(8), 8
    assert_equal Month.to_num(9), 9
    assert_equal Month.to_num(10), 10
    assert_equal Month.to_num(11), 11
    assert_equal Month.to_num(12), 12
  end
  
  def test_num_as_string
    assert_equal Month.to_num('1'), 1
    assert_equal Month.to_num('2'), 2
    assert_equal Month.to_num('3'), 3
    assert_equal Month.to_num('4'), 4
    assert_equal Month.to_num('5'), 5
    assert_equal Month.to_num('6'), 6
    assert_equal Month.to_num('7'), 7
    assert_equal Month.to_num('8'), 8
    assert_equal Month.to_num('9'), 9
    assert_equal Month.to_num('10'), 10
    assert_equal Month.to_num('11'), 11
    assert_equal Month.to_num('12'), 12
  end

  def test_crap
    assert_equal Month.to_num('random'), nil
    assert_equal Month.to_num(13), nil
  end
      
end

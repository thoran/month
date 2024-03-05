# Month

# 20061002
# 0.3.1

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to the conversions.  

# Discussion: 
# 1. Some of the later methods might be better moved to Date or another class...  

# Changes: 
# 1. I realized that the index of the class constants was the same as the numeric value for the months and that this provided the opportunity for vastly reducing the length of this code...  This is much shorter and much more Ruby-like!  

class Month
  
  require 'date'
  
  MONTH_NAMES_LONG = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  MONTH_NAMES_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  MONTH_NUMBERS = 1..12
  
  DAY_NAMES_LONG = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  DAY_NAMES_SHORT = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
  MONTH_DAY_NUMBERS = 1..31
  WEEK_DAY_NUMBERS = 0..6
  
  def self.to_long(month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]; end
    if i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]; end
    if i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_LONG[i]; end
    if i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return MONTH_NAMES_LONG[i]; end
  end
  
  def self.to_short(month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]; end
    if i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]; end
    if i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_SHORT[i]; end
    if i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return MONTH_NAMES_SHORT[i]; end
  end
  
  def self.to_num(month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return i; end
    if i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return i; end
    if i = MONTH_NUMBERS.to_a.index(month); return i; end
    if i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return i; end
  end
  
  def self.to_number(month)
    self.to_num(month)
  end
  
  def self.days(month, year = Date.today.year)
    case month.to_s.capitalize
      when to_long(1), to_short(1), to_num(1).to_s; days_in_month = 31
      when to_long(2), to_short(2), to_num(2).to_s; Date.leap?(year) ? days_in_month = 29 : days_in_month = 28
      when to_long(3), to_short(3), to_num(3).to_s; days_in_month = 31
      when to_long(4), to_short(4), to_num(4).to_s; days_in_month = 30
      when to_long(5), to_short(5), to_num(5).to_s; days_in_month = 31
      when to_long(6), to_short(6), to_num(6).to_s; days_in_month = 30
      when to_long(7), to_short(7), to_num(7).to_s; days_in_month = 31
      when to_long(8), to_short(8), to_num(8).to_s; days_in_month = 31
      when to_long(9), to_short(9), to_num(9).to_s; days_in_month = 30
      when to_long(10), to_short(10), to_num(10).to_s; days_in_month = 31
      when to_long(11), to_short(11), to_num(11).to_s; days_in_month = 30
      when to_long(12), to_short(12), to_num(12).to_s; days_in_month = 31
      else return nil
    end
    return days_in_month
  end
  
  def self.days_in_month(month, year = Date.today.year)
    self.days(month, year)
  end
  
  def self.dates(day, month = Date.today.month, year = Date.today.year)
    unconverted_day = day
    day = day.to_s.capitalize
    month = Month.to_num(month)
    if DAY_NAMES_SHORT.member?(day) || DAY_NAMES_LONG.member?(day) || (WEEK_DAY_NUMBERS.member?(day.to_i) && day =~ /\d/) || (WEEK_DAY_NUMBERS.member?(day.to_i) && unconverted_day.class == Fixnum)
      list_of_dates = []
      Date.new(year, month, 1).upto(Date.new(year, month, days(month, year))) do |date|
        case date.wday
          when 0; list_of_dates << date.mday if ('Sun' == day || 'Sunday' == day || '0' == day)
          when 1; list_of_dates << date.mday if ('Mon' == day || 'Monday' == day || '1' == day) 
          when 2; list_of_dates << date.mday if ('Tue' == day || 'Tuesday' == day || '2' == day)
          when 3; list_of_dates << date.mday if ('Wed' == day || 'Wednesday' == day || '3' == day)
          when 4; list_of_dates << date.mday if ('Thu' == day || 'Thursday' == day || '4' == day)
          when 5; list_of_dates << date.mday if ('Fri' == day || 'Friday' == day || '5' == day)
          when 6; list_of_dates << date.mday if ('Sat' == day || 'Saturday' == day || '6' == day)
        end
      end
      return list_of_dates
    else
      return nil
    end
  end
  
  def self.day(date, month = Date.today.month, year = Date.today.year)
    date = date.to_i
    month = month.to_i
    year = year.to_i
    if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
      case Date.new(year, month, date).wday
        when 0; return 'Sunday'
        when 1; return 'Monday'
        when 2; return 'Tuesday'
        when 3; return 'Wednesday'
        when 4; return 'Thursday'
        when 5; return 'Friday'
        when 6; return 'Saturday'
        else return nil
      end
    else
      return nil
    end
  end
  
  def self.day_long(date, month = Date.today.month, year = Date.today.year)
    self.day(date, month, year)
  end
  
  def self.day_short(date, month = Date.today.month, year = Date.today.year)
    date = date.to_i
    month = month.to_i
    year = year.to_i
    if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
      case Date.new(year, month, date).wday
        when 0; return 'Sun'
        when 1; return 'Mon'
        when 2; return 'Tue'
        when 3; return 'Wed'
        when 4; return 'Thu'
        when 5; return 'Fri'
        when 6; return 'Sat'
        else return nil
      end
    else
      return nil
    end
  end
  
  def self.wday(date, month = Date.today.month, year = Date.today.year)
    date = date.to_i
    month = month.to_i
    year = year.to_i
    if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
      case Date.new(year, month, date).wday
        when 0; return 0
        when 1; return 1
        when 2; return 2
        when 3; return 3
        when 4; return 4
        when 5; return 5
        when 6; return 6
        else return nil
      end
    else
      return nil
    end
  end
  
end

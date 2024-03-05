# Month

# 20061002
# 0.3.7

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to the conversions.  

# Discussion: 
# 1. Some of the later methods might be better moved to Date or another class...  

# Changes: 
# 1. I realized that the index of the class constants was the same as the numeric value for the months and that this provided the opportunity for vastly reducing the length of this code...  This is much shorter and much more Ruby-like!  
# 2. Tests were failing because I forgot to account for zero-base indexed arrays!  
# 3. I wondering whether the employment of elsif and an explicit else clause would help at all...  
# 4. I thought I'd apply the same sorts of changes to month lookups to day lookups...  
# 5. Producing some interesting attempts at consolidating the code.  See particularly MONTH_DAYS and self#days.  
# 6. I somehow knew that I couldn't call a number...  
# 7. self#days needs to check for dud data since a nil will be returned from the to_num lookup in that case...  
# 8. I put an explicit return nil into self#days.  Not necessary, but a little clearer.  
# 9. self#day now accepts short, long, and num_as_string values for the month parameter.  
# 10. self#day is also much compressed by employing an array lookup.  
# 11. self#day_short and self#wday are also now similarly compressed.  

class Month
  
  require 'date'
  
  MONTH_NAMES_LONG = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  MONTH_NAMES_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  MONTH_NUMBERS = 1..12
  
  MONTH_DAYS = [31, Proc.new {|year| Date.leap?(year) ? 29 : 28}, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  
  MONTH_DAY_NUMBERS = 1..31
  
  ISO_8601_DAY_NAMES_LONG = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  ISO_8601_DAY_NAMES_SHORT = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
  ISO_8601_WEEK_DAY_NUMBERS = 1..7
  
  DAY_NAMES_LONG = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  DAY_NAMES_SHORT = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
  WEEK_DAY_NUMBERS = 0..6
  
  
  def self.to_long(month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return MONTH_NAMES_LONG[i]
      else; return nil
    end
  end
  
  def self.to_short(month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return MONTH_NAMES_SHORT[i]
      else; return nil
    end
  end
  
  def self.to_num(month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return i+1
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return i+1
      elsif i = MONTH_NUMBERS.to_a.index(month); return i+1
      elsif i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return i+1
      else; return nil
    end
  end
  
  def self.to_number(month)
    self.to_num(month)
  end
  
  def self.days(month, year = Date.today.year)
    if i = to_num(month)
      case e = MONTH_DAYS[i - 1]
        when Fixnum; return e
        else; return e.call(year)
      end
    else
      return nil
    end
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
    month = Month.to_num(month)
    year = year.to_i
    if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
      return DAY_NAMES_LONG[Date.new(year, month, date).wday]
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
      return DAY_NAMES_SHORT[Date.new(year, month, date).wday]
    else
      return nil
    end
  end
  
  def self.wday(date, month = Date.today.month, year = Date.today.year)
    date = date.to_i
    month = month.to_i
    year = year.to_i
    if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
      return Date.new(year, month, date).wday
    else
      return nil
    end
  end
  
end

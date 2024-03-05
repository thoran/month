# Month

# 20061002
# 0.4.0

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to the conversions.  

# Discussion: 
# 1. Some of the later methods might be better moved to Date or another class...  

# Changes: 
# 1. Added self#cdates which uses ISO representation of numeric weekdays; where 7 = Sunday, rather than 0 = Sunday.  

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
  ISO_8601_WEEK_DAY_NUMBERS_AS_STRINGS = '1'..'7'

  DAY_NAMES_LONG = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  DAY_NAMES_SHORT = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
  WEEK_DAY_NUMBERS = 0..6
  WEEK_DAY_NUMBERS_AS_STRINGS = '0'..'6'
  
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
    month = self.to_num(month)
    if e = DAY_NAMES_LONG.to_a.index(day.to_s.capitalize)
      weekday_number = e
    elsif e = DAY_NAMES_SHORT.to_a.index(day.to_s.capitalize)
      weekday_number = e 
    elsif WEEK_DAY_NUMBERS_AS_STRINGS.to_a.member?(day)
      weekday_number = day.to_i
    elsif WEEK_DAY_NUMBERS.to_a.member?(day.to_i) && day.class == Fixnum
      weekday_number = day.to_i
    else
      return nil
    end
    list_of_dates = []
    Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
      list_of_dates << date.mday if date.wday == weekday_number
    end
    return list_of_dates
  end
  
  def self.day(date, month = Date.today.month, year = Date.today.year)
    date, month, year = date.to_i, self.to_num(month), year.to_i
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
    date, month, year = date.to_i, self.to_num(month), year.to_i
    if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
      return DAY_NAMES_SHORT[Date.new(year, month, date).wday]
    else
      return nil
    end
  end
  
  def self.wday(date, month = Date.today.month, year = Date.today.year)
    date, month, year = date.to_i, self.to_num(month), year.to_i
    if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
      return Date.new(year, month, date).wday
    else
      return nil
    end
  end
  
  def self.cdates(day, month = Date.today.month, year = Date.today.year)
    month = self.to_num(month)
    if e = DAY_NAMES_LONG.to_a.index(day.to_s.capitalize)
      weekday_number = e
    elsif e = DAY_NAMES_SHORT.to_a.index(day.to_s.capitalize)
      weekday_number = e 
    elsif ISO_8601_WEEK_DAY_NUMBERS_AS_STRINGS.to_a.member?(day)
      weekday_number = day.to_i
    elsif ISO_8601_WEEK_DAY_NUMBERS.to_a.member?(day.to_i) && day.class == Fixnum
      weekday_number = day.to_i
    else
      return nil
    end
    list_of_dates = []
    Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
      list_of_dates << date.mday if date.cwday == weekday_number
    end
    return list_of_dates
  end
  
end

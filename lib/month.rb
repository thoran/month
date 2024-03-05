# Month

# 20061003
# 0.5.0

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Discussion: 
# 1. Some of the later methods might be better moved to Date or another class...  

# Changes since 0.4: 
# 1. Compressed the if-elsif-elsif stuff in self#dates and self#cdates.  
# 2. Added a default to self#days (and self#days_in_month) which allows the number of days in the current month to be returned as the default.  
# 3. Did the same (added a default) for self#to_long, #to_short, #to_num, and #to_number.  

# Todo: 
# 1. It isn't essential that this be done, but it might be nice to acknowledge that self#cdates does not need to check whether the input day is a Fixnum or not, since it is using ISO day representation and there is no zero value as it starts at 1.  
# 2. I might consider creating a MONTH_NUMBERS_AS_STRINGS constant, which might save a few cycles here and there.  
# 3. Write tests for the default values for month for the following methods: 
#   self#days; 
#   self#days_in_month; 
#   self#to_long; 
#   self#to_short; 
#   self#to_num; 
#   self#to_number.  

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
  
  def self.to_long(month = Date.today.month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return MONTH_NAMES_LONG[i]
      else; return nil
    end
  end
  
  def self.to_short(month = Date.today.month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return MONTH_NAMES_SHORT[i]
      else; return nil
    end
  end
  
  def self.to_num(month = Date.today.month)
    if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return i+1
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return i+1
      elsif i = MONTH_NUMBERS.to_a.index(month); return i+1
      elsif i = MONTH_NUMBERS.collect {|e| e.to_s }.index(month.to_s); return i+1
      else; return nil
    end
  end
  
  def self.to_number(month = Date.today.month)
    self.to_num(month)
  end
  
  def self.days(month = Date.today.month, year = Date.today.year)
    if i = to_num(month)
      case e = MONTH_DAYS[i - 1]
        when Fixnum; return e
        else; return e.call(year)
      end
    else
      return nil
    end
  end
  
  def self.days_in_month(month = Date.today.month, year = Date.today.year)
    self.days(month, year)
  end
  
  def self.dates(day, month = Date.today.month, year = Date.today.year)
    month = self.to_num(month)
    if e = DAY_NAMES_LONG.to_a.index(day.to_s.capitalize); weekday_number = e
      elsif e = DAY_NAMES_SHORT.to_a.index(day.to_s.capitalize); weekday_number = e 
      elsif WEEK_DAY_NUMBERS_AS_STRINGS.to_a.member?(day); weekday_number = day.to_i
      elsif WEEK_DAY_NUMBERS.to_a.member?(day.to_i) && day.class == Fixnum; weekday_number = day.to_i
      else; return nil
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
    if e = ISO_8601_DAY_NAMES_LONG.to_a.index(day.to_s.capitalize); weekday_number = e + 1
      elsif e = ISO_8601_DAY_NAMES_SHORT.to_a.index(day.to_s.capitalize); weekday_number = e + 1
      elsif ISO_8601_WEEK_DAY_NUMBERS_AS_STRINGS.to_a.member?(day); weekday_number = day.to_i
      elsif ISO_8601_WEEK_DAY_NUMBERS.to_a.member?(day.to_i) && day.class == Fixnum; weekday_number = day.to_i
      else; return nil
    end
    list_of_dates = []
    Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
      list_of_dates << date.mday if date.cwday == weekday_number
    end
    return list_of_dates
  end
  
end

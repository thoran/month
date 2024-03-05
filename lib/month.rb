# Month

# 2010.08.19, 20110702 (Changes)
# 0.6.0

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Discussion: 
# 1. Some of the later methods might be better moved to Date or another class...  

# Changes since 0.5: 
# 1. + self.of().  
# 2. + self.method_missing().  
# 3. + initialize().  
# 4. + days().  
# 5. + to_long().  
# 6. + to_short().  
# 7. + to_num().  
# 8. + dates().  

# Todo: 
# 1. It isn't essential that this be done, but it might be nice to acknowledge that self#cdates does not need to check whether the input day is a Fixnum or not, since it is using ISO day representation and there is no zero value as it starts at 1, it means that non-numeric strings will not convert to zero.  I could also consider using #to_str inside a begin-end block or something like that...  
# 2. I might consider creating a MONTH_NUMBERS_AS_STRINGS constant, which might save a few cycles here and there.  
# 3. Write tests for the default values for month for the following methods: 
#   self#days; 
#   self#days_in_month; 
#   self#to_long; 
#   self#to_short; 
#   self#to_num; 
#   self#to_number.  
# 4. Write tests for: 
#   self#date; 
#   self#cdate.  

class Month
  
  require 'date'
  
  MONTH_NAMES_LONG = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  MONTH_NAMES_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  MONTH_NUMBERS = 1..12
  MONTH_NUMBERS_AS_STRINGS = '1'..'12'
  
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
  
  class << self
    
    def to_long(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); return MONTH_NAMES_LONG[i]
      else; return nil
      end
    end
    
    def to_short(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); return MONTH_NAMES_SHORT[i]
      else; return nil
      end
    end
    
    def to_num(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return i+1
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return i+1
      elsif i = MONTH_NUMBERS.to_a.index(month); return i+1
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); return i+1
      else; return nil
      end
    end
    alias_method :to_number, :to_num
    
    def days(month = Date.today.month, year = Date.today.year)
      if i = to_num(month)
        case e = MONTH_DAYS[i - 1]
        when Fixnum; return e
        else; return e.call(year)
        end
      else
        return nil
      end
    end
    alias_method :days_in_month, :days
    
    def dates(day = nil, month = Date.today.month, year = Date.today.year)
      list_of_dates = []
      month = self.to_num(month)
      unless day.nil?
        if e = DAY_NAMES_LONG.to_a.index(day.to_s.capitalize); weekday_number = e
        elsif e = DAY_NAMES_SHORT.to_a.index(day.to_s.capitalize); weekday_number = e 
        elsif WEEK_DAY_NUMBERS_AS_STRINGS.to_a.member?(day); weekday_number = day.to_i
        elsif WEEK_DAY_NUMBERS.to_a.member?(day.to_i) && day.class == Fixnum; weekday_number = day.to_i
        else; return nil
        end
        Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
          list_of_dates << date.mday if date.wday == weekday_number
        end # Date.new...upto...do
      else
        Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
          list_of_dates << date.mday
        end # Date.new...upto...do
      end # if day.nil?
      list_of_dates
    end # def dates
    
    def day(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        return DAY_NAMES_LONG[Date.new(year, month, date).wday]
      else
        return nil
      end
    end
    
    def day_long(date, month = Date.today.month, year = Date.today.year)
      self.day(date, month, year)
    end
    
    def day_short(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        return DAY_NAMES_SHORT[Date.new(year, month, date).wday]
      else
        return nil
      end
    end
    
    def wday(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        return Date.new(year, month, date).wday
      else
        return nil
      end
    end
    
    def cdates(day = nil, month = Date.today.month, year = Date.today.year)
      list_of_dates = []
      unless day.nil?
        month = self.to_num(month)
        if e = ISO_8601_DAY_NAMES_LONG.to_a.index(day.to_s.capitalize); weekday_number = e + 1
        elsif e = ISO_8601_DAY_NAMES_SHORT.to_a.index(day.to_s.capitalize); weekday_number = e + 1
        elsif ISO_8601_WEEK_DAY_NUMBERS_AS_STRINGS.to_a.member?(day); weekday_number = day.to_i
        elsif ISO_8601_WEEK_DAY_NUMBERS.to_a.member?(day.to_i) && day.class == Fixnum; weekday_number = day.to_i
        else; return nil
        end # if
        Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
          list_of_dates << date.mday if date.cwday == weekday_number
        end # Date.new...upto...do
      else
        Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
          list_of_dates << date.mday
        end # Date.new...upto...do
      end # if day.nil?
      list_of_dates
    end # def dates
    
    def date(which_day, day, month = Date.today.month, year = Date.today.year)
      all = self.dates(day, month, year)
      case which_day.to_s.downcase
      when 'first', '1st', '1'; return all[0]
      when 'second', '2nd', '2'; return all[1]
      when 'third', '3rd', '3'; return all[2]
      when 'fourth', '4th', '4'; return all[3]
      when 'fifth', '5th', '5'; return all[4]
      when 'last', 'ultimate'; return all[all.size - 1]
      when 'second last', '2nd last', 'penultimate'; return all[all.size - 2]
      when 'third last', '3rd last'; return all[all.size - 3]
      when 'fourth last, 4th last'; return all[all.size - 4]
      else; return nil
      end
    end
    
    def cdate(which_day, day, month = Date.today.month, year = Date.today.year)
      all = self.cdates(day, month, year)
      case which_day.downcase
      when 'first', '1st', '1'; return all[0]
      when 'second', '2nd', '2'; return all[1]
      when 'third', '3rd', '3'; return all[2]
      when 'fourth', '4th', '4'; return all[3]
      when 'fifth', '5th', '5'; return all[4]
      when 'last', 'ultimate'; return all[all.size - 1]
      when 'second last', '2nd last', 'penultimate'; return all[all.size - 2]
      when 'third last', '3rd last'; return all[all.size - 3]
      when 'fourth last, 4th last'; return all[all.size - 4]
      else; return nil
      end
    end
    
    def of(month, year = Date.today.year)
      case month.to_s
      when /^(J|j)an$/, /^(J|j)anuary$/; self.new(1, year)
      when /^(F|f)eb$/, /^(F|f)ebruary$/; self.new(2, year)
      when /^(M|m)ar$/, /^(M|m)arch$/; self.new(3, year)
      when /^(A|a)pr$/, /^(A|a)pril$/; self.new(4, year)
      when /^(M|m)ay$/; self.new(5, year)
      when /^(J|j)un$/, /^(J|j)une$/; self.new(6, year)
      when /^(J|j)ul$/, /^(J|j)uly$/; self.new(7, year)
      when /^(A|a)ug$/, /^(A|a)ugust$/; self.new(8, year)
      when /^(S|s)ep$/, /^(S|s)eptember$/; self.new(9, year)
      when /^(O|o)ct$/, /^(O|o)ctober$/; self.new(10, year)
      when /^(N|n)ov$/, /^(N|n)ovember$/; self.new(11, year)
      when /^(D|d)ec$/, /^(D|d)ecember$/; self.new(12, year)
      else; nil
      end
    end
    
    def method_missing(method_name, *args, &block)
      if month_object = of(method_name, *args)
        month_object
      else
        super(method_name, *args, &block)
      end
    end
    
  end # class << self
  
  def initialize(month = Date.today.month, year = Date.today.year)
    @month = month
    @year = year
  end
  
  def days
    self.class.days(@month, @year)
  end
  
  def to_long
    self.class.to_long(@month)
  end
  
  def to_short
    self.class.to_short(@month)
  end
  
  def to_num
    self.class.to_num(@month)
  end
  
  def dates(day)
    self.class.dates(day, @month, @year)
  end
  
end # class Month

if __FILE__ == $0
  p Month.january
end

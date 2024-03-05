# Month

# 20061002
# 0.2.1

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to the conversions.  

# Discussion: 
# 1. Some of the later methods might be better moved to Date or another class...  

# Changes: 
# 1. Made the class variables class contants and did a little rearranging and renaming.  
# 2. Added the method self#wday which returns a number rather than the name of the day of the week.  
# 3. Added self#day_long as a (sort of an) alias of self#day.  
# 4. Added self#day_short which returns the short name of the day of the week.  

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
    month = month.to_s
    case month
      when /\D/
        if (MONTH_NAMES_SHORT.to_a.member?(month.capitalize) || MONTH_NAMES_LONG.to_a.member?(month.capitalize))
          case month.capitalize
            when 'Jan', 'January'; long_month = 'January'
            when 'Feb', 'February'; long_month = 'February'
            when 'Mar', 'March'; long_month = 'March'
            when 'Apr', 'April'; long_month = 'April'
            when 'May'; long_month = 'May'
            when 'Jun', 'June'; long_month = 'June'
            when 'Jul', 'July'; long_month = 'July'
            when 'Aug', 'August'; long_month = 'August'
            when 'Sep', 'September'; long_month = 'September'
            when 'Oct', 'October'; long_month = 'October'
            when 'Nov', 'November'; long_month = 'November'
            when 'Dec', 'December'; long_month = 'December'
          end
          return long_month
        else
          return nil
        end
      when /\d/
        if MONTH_NUMBERS.to_a.member?(month.to_i)
          case month
            when '1'; long_month = 'January'
            when '2'; long_month = 'February'
            when '3'; long_month = 'March'
            when '4'; long_month = 'April'
            when '5'; long_month = 'May'
            when '6'; long_month = 'June'
            when '7'; long_month = 'July'
            when '8'; long_month = 'August'
            when '9'; long_month = 'September'
            when '10'; long_month = 'October'
            when '11'; long_month = 'November'
            when '12'; long_month = 'December'
          end
          return long_month
        else
          return nil
        end
      else
        return nil
      end
  end
  
  def self.to_short(month)
    month = month.to_s
    case month
      when /\D/
        if (MONTH_NAMES_SHORT.to_a.member?(month.capitalize) || MONTH_NAMES_LONG.to_a.member?(month.capitalize))
          case month.capitalize
            when 'Jan', 'January'; short_month = 'Jan'
            when 'Feb', 'February'; short_month = 'Feb'
            when 'Mar', 'March'; short_month = 'Mar'
            when 'Apr', 'April'; short_month = 'Apr'
            when 'May'; short_month = 'May'
            when 'Jun', 'June'; short_month = 'Jun'
            when 'Jul', 'July'; short_month = 'Jul'
            when 'Aug', 'August'; short_month = 'Aug'
            when 'Sep', 'September'; short_month = 'Sep'
            when 'Oct', 'October'; short_month = 'Oct'
            when 'Nov', 'November'; short_month = 'Nov'
            when 'Dec', 'December'; short_month = 'Dec'
          end
          return short_month
        else
          return nil
        end
      when /\d/
        if MONTH_NUMBERS.to_a.member?(month.to_i)
          case month
            when '1'; short_month = 'Jan'
            when '2'; short_month = 'Feb'
            when '3'; short_month = 'Mar'
            when '4'; short_month = 'Apr'
            when '5'; short_month = 'May'
            when '6'; short_month = 'Jun'
            when '7'; short_month = 'Jul'
            when '8'; short_month = 'Aug'
            when '9'; short_month = 'Sep'
            when '10'; short_month = 'Oct'
            when '11'; short_month = 'Nov'
            when '12'; short_month = 'Dec'
          end
          return short_month
        else
          return nil
        end
      else
        return nil
      end
  end
  
  # Consider putting an error in here for when there is no sensible result, rather than returning nil.  
  def self.to_num(month)
    month = month.to_s
    case month
      when /\D/ 
        if (MONTH_NAMES_SHORT.to_a.member?(month.capitalize) || MONTH_NAMES_LONG.to_a.member?(month.capitalize))
          case month.capitalize
            when 'Jan', 'January'; number_month = 1
            when 'Feb', 'February'; number_month = 2
            when 'Mar', 'March'; number_month = 3
            when 'Apr', 'April'; number_month = 4
            when 'May'; number_month = 5
            when 'Jun', 'June'; number_month = 6
            when 'Jul', 'July'; number_month = 7
            when 'Aug', 'August'; number_month = 8
            when 'Sep', 'September'; number_month = 9
            when 'Oct', 'October'; number_month = 10
            when 'Nov', 'November'; number_month = 11
            when 'Dec', 'December'; number_month = 12
          end
          return number_month
        else
          return nil
        end
      when /\d/
        if MONTH_NUMBERS.to_a.member?(month.to_i)
          return month.to_i
        else
          return nil
        end
      else
        return nil
      end
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

# Month

# 20061002
# 0.1.3

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to the conversions.  

# Discussion: It still May however be simpler, and faster, to use Date or Time to do the conversions, rather than doing it 'by hand' as I'm doing here...  

# History: The beginnings of this were derived from some code from susy.rb.  

# Changes: 
# 1. I added the method dates which returns the dates for which it is a certain day.  
# 2. As I was doing this I added an alias method #date, since #day and #mday don't seem very satisfying (even if it appears (too?) confusing)...  And yet I haven't used it!  Yet.  
# 3. I added the method day, which returns the day of the week for a particular date.  
# 4. I added the range of numeric days as a class variable to assist with the sanity test for the inputs in self#day.  
# 5. Short days are also being tested now in self#dates.  
# 6. I added class variables for the list of valid short and long day names for use with the other change which is to test for those in self#dates.  (Testing has given me several clues as to holes in this code!  Prior to testing too...)
# 7. One can't use shorthand if statements if there is no else part!  
# 8. Removed the alias Date#date, since it was a little ambiguous, but moreover it wasn't being used.  
# 9. Converted day to a string before capitalizing, since day might be input as something other than a string and if so capitalize will fail.  
# 10. The test in self#dates should have been an OR, not an AND!  
# 11. Modified the sanity test in self#day to test the string value of year against the regex.  

# Discussion: 
# 1. Some of the later methods might be better moved to Date or another class...  


class Month
  
  require 'date'
  
  @@long_months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  @@short_months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  @@number_months = 1..12
  @@number_days = 1..31
  @@day_names_short = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
  @@day_names_long = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
    
  def self.to_long(month)
    month = month.to_s
    case month
      when /\D/
        if (@@short_months.to_a.member?(month.capitalize) || @@long_months.to_a.member?(month.capitalize))
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
        if @@number_months.to_a.member?(month.to_i)
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
        if (@@short_months.to_a.member?(month.capitalize) || @@long_months.to_a.member?(month.capitalize))
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
        if @@number_months.to_a.member?(month.to_i)
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
        if (@@short_months.to_a.member?(month.capitalize) || @@long_months.to_a.member?(month.capitalize))
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
        if @@number_months.to_a.member?(month.to_i)
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
    day = day.to_s.capitalize
    if @@day_names_short.member?(day) || @@day_names_long.member?(day)
      list_of_dates = []
      Date.new(year, month, 1).upto(Date.new(year, month, days(month, year))) do |date|
        case date.wday
          when 0; list_of_dates << date.mday if ('Sun' == day || 'Sunday' == day)
          when 1; list_of_dates << date.mday if ('Mon' == day || 'Monday' == day)
          when 2; list_of_dates << date.mday if ('Tue' == day || 'Tuesday' == day)
          when 3; list_of_dates << date.mday if ('Wed' == day || 'Wednesday' == day)
          when 4; list_of_dates << date.mday if ('Thu' == day || 'Thursday' == day)
          when 5; list_of_dates << date.mday if ('Fri' == day || 'Friday' == day)
          when 6; list_of_dates << date.mday if ('Sat' == day || 'Saturday' == day)
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
    if @@number_days.to_a.member?(date) && @@number_months.to_a.member?(month) && (year.to_s =~ /\d/)
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
  
end

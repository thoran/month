# Month/self.wday
# Month.wday

# 20100702
# 0.7.0

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Changes since 0.6: 
# 1. Split to it's own file.  

class Month
  class << self
    
    def wday(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        return Date.new(year, month, date).wday
      else
        return nil
      end
    end
    
  end
end

# Month/self.days
# Month.days

# 20100702
# 0.7.0

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Changes since 0.6: 
# 1. Split to it's own file.  

require 'Month'
require 'Month/to_num'

class Month
  class << self
    
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
    
  end
end

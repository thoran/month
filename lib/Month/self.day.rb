# Month/self.day
# Month.day

# 20110822, 24
# 0.9.0

# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/Constants'.  
# 3. + require 'date'.  

require 'date'
require 'Month/Constants'

class Month
  class << self
    
    def day(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        WEEK_DAY_NAMES_LONG[Date.new(year, month, date).wday]
      else
        nil
      end
    end
    
  end
end

# Month/self.days
# Month.days

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/Constants'/.  
# 3. + require 'date'.  

require 'date'
require 'Month/Constants'
require 'Month/to_num'

class Month
  class << self
    
    def days(month = Date.today.month, year = Date.today.year)
      if i = to_num(month)
        case e = MONTH_DAYS[i - 1]
        when Fixnum; e
        else; e.call(year)
        end
      else
        nil
      end
    end
    
  end
end

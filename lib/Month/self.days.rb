# Month/self.days
# Month.days

# 20100706
# 0.8.0

require 'Month'
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

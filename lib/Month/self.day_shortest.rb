# Month/self.day_shortest
# Month.day_shortest

# 20110822, 24
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/Constants'/.  

require 'date'
require 'Month/Constants'

class Month
  class << self
    
    def day_shortest(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        WEEK_DAY_NAMES_SHORTEST[Date.new(year, month, date).wday]
      else
        nil
      end
    end
    
  end
end

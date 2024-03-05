# Month/self.next
# Month.next

# 20110824, 25
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Reversed the argument order for Month.new.  

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def next(month = Date.today.month, year = Date.today.year)
      if month == 12
        Month.new(year + 1, 1)
      else
        Month.new(year, month + 1)
      end
    end
    
  end
end

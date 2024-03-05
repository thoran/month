# Month/self.last
# Month.last

# 20110824, 25
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'date'.  
# 3. + require 'Month/initialize'.  
# 4. Reversed the argument order for Month.new.  

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def last(month = Date.today.month, year = Date.today.year)
      if month == 1
        Month.new(year - 1, 12)
      else
        Month.new(year, month - 1)
      end
    end
    
  end
end

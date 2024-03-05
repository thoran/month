# Month/self.next
# Month.next

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def next(month = Date.today.month, year = Date.today.year)
      if month == 12
        Month.new(1, year + 1)
      else
        Month.new(month + 1, year)
      end
    end
    
  end
end

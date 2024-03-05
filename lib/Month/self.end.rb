# Month/self.end
# Month.end

# 20110702
# 0.7.0

# Changes: 
# 1. Added a more typical interface which has month and year in it, with defauls as per most other Month class methods.  

require 'date'
require 'Month/self.days'

class Month
  class << self
    
    def end(month = Date.today.month, year = Date.today.year)
      Date.new(year, month, self.days(month, year))
    end
    
  end
end

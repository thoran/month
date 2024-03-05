# Month/self.last
# Month.last

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'date'.  
# 3. + require 'Month/initialize'.  

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def last(month = Date.today.month, year = Date.today.year)
      if month == 1
        Month.new(12, year - 1)
      else
        Month.new(month - 1, year)
      end
    end
    
  end
end

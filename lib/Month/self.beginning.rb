# Month/self.beginning
# Month.beginning

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'date'

class Month
  class << self
    
    def beginning(month = Date.today.month, year = Date.today.year)
      Date.new(year, month, 1)
    end
    
  end
end

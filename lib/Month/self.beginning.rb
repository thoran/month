# Month/self.beginning
# Month.beginning

# 20110704
# 0.7.0

require 'date'

class Month
  class << self
    
    def beginning(month = Date.today.month, year = Date.today.year)
      Date.new(year, month, 1)
    end
    
  end
end

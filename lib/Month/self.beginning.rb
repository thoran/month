# Month/self.beginning
# Month.beginning

# 20110706
# 0.8.0

require 'date'

class Month
  class << self
    
    def beginning(month = Date.today.month, year = Date.today.year)
      Date.new(year, month, 1)
    end
    
  end
end

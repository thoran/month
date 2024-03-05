# Month/self.end
# Month.end

# 20110706
# 0.8.0

require 'date'
require 'Month/self.days'

class Month
  class << self
    
    def end(month = Date.today.month, year = Date.today.year)
      Date.new(year, month, self.days(month, year))
    end
    
  end
end

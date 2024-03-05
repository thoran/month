# Month/self.next
# Month.next

# 20110706
# 0.8.0

# Changes: 
# 1.

require 'date'
require 'Month'

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

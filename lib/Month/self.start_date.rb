# Month/self.start_date
# Month.start_date

# 20110706
# 0.8.0

require 'Month/self.start'

class Month
  class << self
    
    alias_method :start_date, :start
    
  end
end

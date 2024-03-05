# Month/self.finish_date
# Month.finish_date

# 20110707
# 0.8.0

require 'Month/self.finish_date'

class Month
  class << self
    
    alias_method :finish_date, :finish
    
  end
end

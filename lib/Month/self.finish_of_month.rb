# Month/self.finish_of_month
# Month.finish_of_month

# 20110707
# 0.8.0

require 'Month/self.finish_of_month'

class Month
  class << self
    
    alias_method :finish_of_month, :finish
    
  end
end

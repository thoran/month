# Month/self.start
# Month.start

# 20110704
# 0.7.0

# Changes: 
# 1. Switched alias order.  

require 'Month/self.beginning'

class Month
  class << self
    
    alias_method :start, :beginning
    
  end
end

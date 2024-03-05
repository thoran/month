# Month/self.prev_month
# Month.prev_month

# 20111203
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/self.prev'

class Month
  class << self
    
    alias_method :prev_month, :prev
    
  end
end

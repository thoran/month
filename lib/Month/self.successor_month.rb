# Month/self.successor_month
# Month.successor_month

# 20111203
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/self.next'

class Month
  class << self
    
    alias_method :successor_month, :next
    
  end
end

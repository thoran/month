# Month/self.succ_month
# Month.succ_month

# 20111203
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/self.next'

class Month
  class << self
    
    alias_method :succ_month, :next
    
  end
end

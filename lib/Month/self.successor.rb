# Month/self.successor
# Month.successor

# 20111203
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/self.next'

class Month
  class << self
    
    alias_method :successor, :next
    
  end
end

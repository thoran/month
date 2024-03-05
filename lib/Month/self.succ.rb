# Month/self.succ
# Month.succ

# 20110705
# 0.8.0

class Month
  class << self
    
    alias_method :succ, :next
    
  end
end

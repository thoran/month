# Month/self.succ
# Month.succ

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

class Month
  class << self
    
    alias_method :succ, :next
    
  end
end

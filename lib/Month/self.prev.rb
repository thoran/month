# Month/self.prev
# Month.prev

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.last'

class Month
  class << self
    
    alias_method :prev, :last
    
  end
end

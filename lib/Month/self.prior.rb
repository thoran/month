# Month/self.prior
# Month.prior

# 20111203
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. 

require 'Month/self.prev'

class Month
  class << self
    
    alias_method :prior, :prev
    
  end
end

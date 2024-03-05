# Month/self.to_number
# Month.to_number

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.to_num'

class Month
  class << self
    
    alias_method :to_number, :to_num
    
  end
end

# Month/self.end_of_month
# Month#self.end_of_month

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.end'

class Month
  class << self
    
    alias_method :end_of_month, :end
    
  end
end

# Month/self.beginning_of_month
# Month#self.beginning_of_month

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.beginning'

class Month
  class << self
    
    alias_method :beginning_of_month, :beginning
    
  end
end

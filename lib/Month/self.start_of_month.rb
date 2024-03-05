# Month/self.start_of_month
# Month.start_of_month

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.start'

class Month
  class << self
    
    alias_method :start_of_month, :start
    
  end
end

# Month/self.finish_of_month
# Month.finish_of_month

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.finish_of_month'

class Month
  class << self
    
    alias_method :finish_of_month, :finish
    
  end
end

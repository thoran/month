# Month/self.finish_of_month
# Month.finish_of_month

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. 

require 'Month/self.finish_date'

class Month
  class << self
    
    alias_method :finish_of_month, :finish_date
    
  end
end

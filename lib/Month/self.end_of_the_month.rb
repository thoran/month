# Month/self.end_of_the_month
# Month.end_of_the_month

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. 

require 'Month/self.end_date'

class Month
  class << self
    
    alias_method :end_of_the_month, :end_date
    
  end
end

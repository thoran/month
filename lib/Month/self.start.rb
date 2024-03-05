# Month/self.start
# Month.start

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. 

require 'Month/self.start_date'

class Month
  class << self
    
    alias_method :start, :start_date
    
  end
end

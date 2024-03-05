# Month/self.finish
# Month.finish

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. 

require 'Month/self.finish_date'

class Month
  class << self
    
    alias_method :finish, :finish_date
    
  end
end

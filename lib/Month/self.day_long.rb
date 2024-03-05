# Month/self.day_long
# Month.day_long

# 20110824
# 0.9.0
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.day'

class Month
  class << self
    
    alias_method :day_long, :day
    
  end
end

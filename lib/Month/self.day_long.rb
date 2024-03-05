# Month/self.day_long
# Month.day_long

# 20100702
# 0.7.0

# Changes since 0.6: 
# 1. Split to it's own file.  
# 2. Changed to an alias_method, rather than a redirected chaining of methods.  I'm not sure why I did it the other way.  

require 'Month/self.day'

class Month
  class << self
    
    alias_method :day_long, :day
    
  end
end

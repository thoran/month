# Month/self.day_long
# Month.day_long

# 20100706
# 0.8.0

require 'Month/self.day'

class Month
  class << self
    
    alias_method :day_long, :day
    
  end
end

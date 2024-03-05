# Month/self.to_number
# Month.to_number

# 20100707
# 0.8.0

require 'Month/self.to_num'

class Month
  class << self
    
    alias_method :to_number, :to_num
    
  end
end

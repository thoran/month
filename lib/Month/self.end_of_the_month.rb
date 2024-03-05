# Month/self.end_of_the_month
# Month#self.end_of_the_month

# 20110706
# 0.8.0

require 'Month/self.end'

class Month
  class << self
    
    alias_method :end_of_the_month, :end
    
  end
end

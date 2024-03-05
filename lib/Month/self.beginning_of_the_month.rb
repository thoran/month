# Month/self.beginning_of_month
# Month#self.beginning_of_month

# 20110706
# 0.8.0

require 'Month/self.beginning'

class Month
  class << self
    
    alias_method :beginning_of_the_month, :beginning
    
  end
end

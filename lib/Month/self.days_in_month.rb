# Month/self.days_in_month
# Month.days_in_month

# 20100706
# 0.8.0

require 'Month/self.days'

class Month
  class << self
    
    alias_method :days_in_month, :days
    
  end
end

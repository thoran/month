# Month/self.days_in_the_month
# Month.days_in_the_month

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.days'

class Month
  class << self
    
    alias_method :days_in_the_month, :days
    
  end
end

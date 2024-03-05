# Month/self.end_date
# Month#self.end_date

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.end'

class Month
  class << self
    
    alias_method :end_date, :end
    
  end
end

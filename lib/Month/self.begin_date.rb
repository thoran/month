# Month/self.begin_date
# Month#self.begin_date

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.beginning'

class Month
  class << self
    
    alias_method :begin_date, :beginning
    
  end
end

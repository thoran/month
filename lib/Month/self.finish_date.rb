# Month/self.finish_date
# Month.finish_date

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/self.finish_date'

class Month
  class << self
    
    alias_method :finish_date, :finish
    
  end
end

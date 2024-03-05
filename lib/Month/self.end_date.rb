# Month/self.end_date
# Month#self.end_date

# 20110706
# 0.8.0

require 'Month/self.end'

class Month
  class << self
    
    alias_method :end_date, :end
    
  end
end

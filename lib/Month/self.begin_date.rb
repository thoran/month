# Month/self.begin_date
# Month#self.begin_date

# 20110706
# 0.8.0

require 'Month/self.beginning'

class Month
  class << self
    
    alias_method :begin_date, :beginning
    
  end
end

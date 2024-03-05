# Month/self.start
# Month.start

# 20110706
# 0.8.0

require 'Month/self.beginning'

class Month
  class << self
    
    alias_method :start, :beginning
    
  end
end

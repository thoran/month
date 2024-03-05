# Month/self.previous
# Month.previous

# 20110705
# 0.8.0

require 'Month/self.last'

class Month
  class << self
    
    alias_method :previous, :last
    
  end
end

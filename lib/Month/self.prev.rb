# Month/self.prev
# Month.prev

# 20110706
# 0.8.0

require 'Month/self.last'

class Month
  class << self
    
    alias_method :prev, :last
    
  end
end

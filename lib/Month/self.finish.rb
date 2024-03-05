# Month/self.finish
# Month.finish

# 20110702
# 0.7.0

require 'Month/self.end'

class Month
  class << self
    
    alias_method :finish, :end
    
  end
end

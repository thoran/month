# Month/self.finish
# Month.finish

# 20110707
# 0.8.0

require 'Month/self.end'

class Month
  class << self
    
    alias_method :finish, :end
    
  end
end

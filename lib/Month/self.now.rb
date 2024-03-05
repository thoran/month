# Month/self.now
# Month.now

# 20111204
# 0.9.1

require 'Month/self.today'

class Month
  class << self
    
    alias_method :now, :today
    
  end
end

# Month/self.prior
# Month.prior

# 20110706
# 0.8.0

require 'Month/self.last'

class Month
  class << self
    
    alias_method :prior, :last
    
  end
end

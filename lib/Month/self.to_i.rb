# Month/self.to_i
# Month.to_i

# 20110825
# 0.9.0

require 'date'
require 'Month/Constants'

class Month
  class << self
    
    alias_method :to_i, :to_num
    
  end
end

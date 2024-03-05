# Month/self.start_of_the_month
# Month.start_of_the_month

# 20110706
# 0.8.0

require 'Month/self.start'

class Month
  class << self
    
    alias_method :start_of_the_month, :start
    
  end
end

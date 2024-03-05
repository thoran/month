# Month/to_i
# Month#to_i

# 20110821, 22, 24, 25
# 0.9.0

require 'Month/initialize'
require 'Month/self.to_i'

class Month
  
  def to_i
    Month.to_i(month)
  end
  
end

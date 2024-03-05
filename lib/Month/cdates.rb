# Month/cdates
# Month#cdates

# 20110822, 24, 25
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_readers instead of instance variables.  
# 4. Argument day is now optional.  

require 'Month/initialize'
require 'Month/self.cdates'

class Month
  
  def cdates(day = nil)
    Month.cdates(month, year, :day => day)
  end
  
end

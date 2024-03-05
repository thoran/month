# Month/to_long
# Month#to_long

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_reader instead of an instance variable.  

require 'Month/initialize'
require 'Month/self.to_long'

class Month
  
  def to_long
    Month.to_long(month)
  end
  
end

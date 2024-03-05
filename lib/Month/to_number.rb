# Month/to_number
# Month#to_number

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_reader instead of an instance variable.  
# 4. + require 'Month/self.to_number'.  

require 'Month/initialize'
require 'Month/self.to_number'

class Month
  
  def to_number
    Month.to_number(month)
  end
  
end

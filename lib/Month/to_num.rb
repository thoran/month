# Month/to_num
# Month#to_num

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_reader instead of an instance variable.  
# 4. + require 'Month/self.to_num'.  

require 'Month/initialize'
require 'Month/self.to_num'

class Month
  
  def to_num
    Month.to_num(month)
  end
  
end

# Month/last
# Month#last

# 20110824, 1203
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_readers instead of instance variables.  
# 0/1
# 4. 

require 'Month/initialize'
require 'Month/self.last'

class Month
  
  def last
    Month.last(year, month)
  end
  
end

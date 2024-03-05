# Month/days
# Month#days

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_readers instead of instance variables.  

require 'Month/initialize'
require 'Month/self.days'

class Month
  
  def days
    Month.days(month, year)
  end
  
end

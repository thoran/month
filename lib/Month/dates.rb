# Month/dates
# Month#dates

# 20110824, 25
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_readers instead of instance variables.  
# 4. Argument day is now optional.  

require 'Month/initialize'
require 'Month/self.dates'

class Month
  
  def dates(day = nil)
    Month.dates(month, year, :day => day)
  end
  
end

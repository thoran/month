# Month/start_date
# Month#start_date

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  

require 'Month/initialize'
require 'Month/self.start_date'

class Month
  
  def start_date
    Month.start_date(month, year)
  end
  
end

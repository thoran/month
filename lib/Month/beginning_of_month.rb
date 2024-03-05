# Month/beginning_of_month
# Month#beginning_of_month

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  

require 'Month/initialize'
require 'Month/self.beginning_of_month'

class Month
  
  def beginning_of_month
    Month.beginning_of_month(month, year)
  end
  
end

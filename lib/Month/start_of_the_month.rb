# Month/start_of_the_month
# Month#start_of_the_month

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  
# 0/1
# 4. 

require 'Month/initialize'
require 'Month/self.start_of_the_month'

class Month
  
  def start_of_the_month
    Month.start_of_the_month(year, month)
  end
  
end

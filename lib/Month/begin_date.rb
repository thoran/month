# Month/begin_date
# Month#begin_date

# 20110722, 24
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/initialize'
require 'Month/self.begin_date'

class Month
  
  def begin_date
    Month.begin_date(@month, @year)
  end
  
end

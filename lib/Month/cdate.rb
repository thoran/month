# Month/cdate
# Month#cdate

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/initialize'
require 'Month/self.cdate'

class Month
  
  def cdate(which_day, day)
    Month.cdate(which_day, day, year, month)
  end
  
end

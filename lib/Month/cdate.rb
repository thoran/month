# Month/cdate
# Month#cdate

# 20110824
# 0.9.0

require 'Month/initialize'
require 'Month/self.cdate'

class Month
  
  def cdate(which_day, day)
    Month.cdate(which_day, day, month, year)
  end
  
end

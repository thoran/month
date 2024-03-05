# Month/succ_month
# Month#succ_month

# 20111203, 4
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/initialize'
require 'Month/self.succ_month'

class Month
  
  def succ_month
    Month.succ_month(year, month)
  end
  
end

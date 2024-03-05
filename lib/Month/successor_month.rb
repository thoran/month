# Month/successor_month
# Month#successor_month

# 20111203, 4
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/initialize'
require 'Month/self.successor_month'

class Month
  
  def successor_month
    Month.successor_month(year, month)
  end
  
end

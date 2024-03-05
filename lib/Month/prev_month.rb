# Month/prev_month
# Month#prev_month

# 20111203, 4
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/initialize'
require 'Month/self.prev_month'

class Month
  
  def prev_month
    Month.prev_month(year, month)
  end
  
end

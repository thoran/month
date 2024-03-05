# Month/previous_month
# Month#previous_month

# 20111203, 4
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/initialize'
require 'Month/self.previous_month'

class Month
  
  def previous_month
    Month.previous_month(year, month)
  end
  
end

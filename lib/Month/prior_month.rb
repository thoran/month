# Month/prior_month
# Month#prior_month

# 20111203, 4
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. 

require 'Month/initialize'
require 'Month/self.prior_month'

class Month
  
  def prior_month
    Month.prior_month(year, month)
  end
  
end

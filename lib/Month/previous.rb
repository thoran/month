# Month/previous
# Month#previous

# 20111203, 4
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/initialize'
require 'Month/self.previous'

class Month
  
  def previous
    Month.previous(year, month)
  end
  
end

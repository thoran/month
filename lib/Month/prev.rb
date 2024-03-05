# Month/prev
# Month#prev

# 20111203, 4
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/initialize'
require 'Month/self.prev'

class Month
  
  def prev
    Month.prev(year, month)
  end
  
end

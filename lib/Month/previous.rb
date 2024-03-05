# Month/previous
# Month#previous

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

require 'Month/last'

class Month
  
  alias_method :previous, :last
  
end

# Month/eqlQ
# Month#eql?

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. /require 'Month/comparator'/require 'Month/_comparator'/.  

require 'Month/_comparator'

class Month
  
  def eql?(other_month)
    self == other_month
  end
  
end

# Month/prior
# Month#prior

# 20110706
# 0.8.0

require 'Month/last'

class Month
  
  alias_method :prior, :last
  
end

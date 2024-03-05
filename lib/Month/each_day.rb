# Month/each_day
# Month#each_day

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. /self.//.  

require 'Month/initialize'
require 'Month/days'

class Month
  
  def each_day
    (1..days).each{|day| yield day}
  end
  
end

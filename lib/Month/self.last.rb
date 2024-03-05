# Month/self.last
# Month.last

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'date'.  
# 3. + require 'Month/initialize'.  
# 4. Reversed the argument order for Month.new.  
# 0/1
# 5. 

require 'Month/self.last_month'

class Month
  class << self
    
    alias_method :last, :last_month
    
  end
end

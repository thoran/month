# Month.this

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'date'.  
# 3. + require 'Month/initialize'.  

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def this
      Month.new(Date.today.month)
    end
    
  end
end

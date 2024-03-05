# Month/self.method_missing

# 20110707
# 0.8.0

require 'Month/self.of'

class Month
  class << self
    
    def method_missing(method_name, *args, &block)
      if month_object = self.of(method_name, *args)
       month_object
      else
       super(method_name, *args, &block)
      end
    end
    
  end
end

# Month/self.last
# Month.last

# 20110704
# 0.7.0

# Changes: 
# 1. Bumped version number to correspond with Month's overall version number.  

require 'Month/self.this'

class Month
  class << self
    
    def last
      if Month.this.to_num == 1
        Month.new(12, Date.today.year - 1)
      else
        Month.new(Date.today.month - 1)
      end
    end
    
  end
end

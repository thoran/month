# Month/equivalence
# Month#==

# 20110704
# 0.7.0

require 'Month'

class Month
  
  def ==(other_month)
    self.month == other_month.month && self.year == other_month.year
  end
  
end

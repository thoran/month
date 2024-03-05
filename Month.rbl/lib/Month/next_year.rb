# Month/next_year
# Month#next_year

# 20111206
# 0.9.1

require 'Month/Constants'
require 'Month/initialize'

class Month
  
  def next_year
    Month.new(self.year + 1, self.month)
  end
  
end

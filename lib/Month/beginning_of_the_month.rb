# Month/beginning_of_the_month
# Month#beginning_of_the_month

# 20110707
# 0.8.0

require 'Month'
require 'Month/self.beginning_of_month'

class Month
  
  def beginning_of_the_month
    Month.beginning_of_the_month(@month, @year)
  end
  
end

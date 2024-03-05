# Month/end_of_month
# Month#end_of_month

# 20100707
# 0.8.0

require 'Month'
require 'Month/self.end_of_month'

class Month
  
  def end_of_month
    Month.end_of_month(@month, @year)
  end
  
end

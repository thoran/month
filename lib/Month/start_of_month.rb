# Month/start_of_month
# Month#start_of_month

# 20110707
# 0.8.0

require 'Month'
require 'Month/self.start_of_month'

class Month
  
  def start_of_month
    Month.start_of_month(@month, @year)
  end
  
end

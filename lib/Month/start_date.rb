# Month/start_date
# Month#start_date

# 20110707
# 0.8.0

require 'Month'
require 'Month/self.start_date'

class Month
  
  def start_date
    Month.start_date(@month, @year)
  end
  
end

# Month/begin_date
# Month#begin_date

# 20110707
# 0.8.0

require 'Month'
require 'Month/self.begin_date'

class Month
  
  def begin_date
    Month.begin_date(@month, @year)
  end
  
end

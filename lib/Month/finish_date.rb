# Month/finish_date
# Month#finish_date

# 20110707
# 0.8.0

require 'Month'
require 'Month/self.finish_date'

class Month
  
  def finish_date
    Month.finish_date(@month, @year)
  end
  
end

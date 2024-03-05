# Month/end_date
# Month#end_date

# 20100707
# 0.8.0

require 'Month'
require 'Month/self.end_date'

class Month
  
  def end_date
    Month.end_date(@month, @year)
  end
  
end

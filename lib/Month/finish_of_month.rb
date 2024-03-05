# Month/finish_of_month
# Month#finish_of_month

# 20110707
# 0.8.0

require 'Month'
require 'Month/self.finish_of_month'

class Month
  
  def finish_of_month
    Month.finish_of_month(@month, @year)
  end
  
end

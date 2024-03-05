# Month/date
# Month#date

# 20110824
# 0.9.0

require 'Month/initialize'
require 'Month/self.date'

class Month
  
  def date(which_day, day)
    Month.date(which_day, day, month, year)
  end
  
end

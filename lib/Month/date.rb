# Month/date
# Month#date

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. 

require 'Month/initialize'
require 'Month/self.date'

class Month
  
  def date(which_day, day)
    Month.date(which_day, day, year, month)
  end
  
end

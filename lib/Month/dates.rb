# Month/dates
# Month#dates

# 20100706
# 0.8.0

require 'Month/self.dates'

class Month
  
  def dates(day)
    Month.dates(@month, @year, :day => day)
  end
  
end

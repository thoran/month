# Month/dates
# Month#dates

# 20100702
# 0.7.0

# Changes since 0.6: 
# 1. Split to it's own file.  
# 2. /self.class/Month/, since I expect that will be marginally quicker.  

require 'Month/self.dates'

class Month
  
  def dates(day)
    Month.dates(day, @month, @year)
  end
  
end

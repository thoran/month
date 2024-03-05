# Month/cdates
# Month#cdates

# 20110822
# 0.8.1

require 'Month/self.cdates'

class Month
  
  def cdates(day)
    Month.cdates(@month, @year, :day => day)
  end
  
end

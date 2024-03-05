# Month/next
# Month#next

# 20110705
# 0.8.0

require 'Month/self.next'

class Month
  
  def next
    Month.next(@month, @year)
  end
  
end

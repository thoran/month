# Month/beginning
# Month#beginning

# 20110704
# 0.7.0

require 'Month'

class Month
  
  def beginning
    Date.new(@year, @month, 1)
  end
  
end

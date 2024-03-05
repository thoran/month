# Month/each_day
# Month#each_day

# 20110705
# 0.8.0

require 'Month/days'

class Month
  
  def each_day
    (1..self.days).each{|day| yield day}
  end
  
end

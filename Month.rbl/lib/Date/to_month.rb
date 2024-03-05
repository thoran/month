# Month/to_month
# Month#to_month

# 20111206
# 0.9.1

require 'Month.rbd/Month'

class Date
  
  def to_month
    Month.new(self.year, self.month)
  end
  
end

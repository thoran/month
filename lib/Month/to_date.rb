# Month/to_date
# Month#to_date

# 20110822, 24
# 0.9.0

require 'date'
require 'Month/initialize'

class Month
  
  def to_date
    Date.new(year, month, 1)
  end
  
end

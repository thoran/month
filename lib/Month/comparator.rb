# Month/comparator
# Month#<=>

# 20110705, 07
# 0.8.0

require 'Month'

class Month
  
  include Comparable
  
  def <=>(other_month)
    if @year == other_month.year
      @month <=> other_month.month
    else
      @year <=> other_month.year
    end
  end
  
end

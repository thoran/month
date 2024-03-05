# Month/_comparator
# Month#<=>

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  

require 'Month/initialize'

class Month
  
  include Comparable
  
  def <=>(other_month)
    if year == other_month.year
      month <=> other_month.month
    else
      year <=> other_month.year
    end
  end
  
end

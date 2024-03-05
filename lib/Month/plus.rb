# Month/plus
# Month#+

# 20110824, 25
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  
# 4. Reversed the argument order for Month.new.  

require 'Month/initialize'

class Month
  
  def +(added_months)
    added_years, remaining_months = added_months.divmod(12)
    overflow_year, month = (self.month + remaining_months).divmod(12)
    year = self.year + added_years + overflow_year
    Month.new(year, month)
  end
  
end

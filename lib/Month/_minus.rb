# Month/minus
# Month#-

# 20110824, 25
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_readers instead of instance variables.  
# 4. Reversed the argument order for Month.new.  

require 'Month/initialize'

class Month
  
  def -(subtracted_months)
    subtracted_years, remaining_months = subtracted_months.divmod(12)
    overflow_year, month = (self.month - remaining_months).divmod(12)
    year = self.year - subtracted_years - overflow_year.abs
    p year, month
    Month.new(year, month)
  end
  
end

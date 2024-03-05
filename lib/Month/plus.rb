# Month/plus
# Month#+

# 20110705
# 0.8.0

require 'Month'

class Month
  
  def +(added_months)
    added_years, remaining_months = added_months.divmod(12)
    overflow_year, month = (@month + remaining_months).divmod(12)
    year = @year + added_years + overflow_year
    Month.new(month, year)
  end
  
end

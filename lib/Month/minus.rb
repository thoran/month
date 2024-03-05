# Month/minus
# Month#-

# 20110705
# 0.8.0

class Month
  
  def -(subtracted_months)
    subtracted_years, remaining_months = subtracted_months.divmod(12)
    overflow_year, month = (@month - remaining_months).divmod(12)
    year = @year - subtracted_years - overflow_year.abs
    Month.new(month, year)
  end
  
end

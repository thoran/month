# Month/self.to_short
# Month.to_short

# 20100702
# 0.7.0

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Changes since 0.6: 
# 1. Split to it's own file.  

class Month
  class << self
    
    def to_short(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); return MONTH_NAMES_SHORT[i]
      else; return nil
      end
    end
    
  end
end

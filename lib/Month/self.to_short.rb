# Month/self.to_short
# Month.to_short

# 20100707
# 0.8.0

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

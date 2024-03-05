# Month/self.to_long
# Month.to_long

# 20100706
# 0.8.0

require 'Month'

class Month
  class << self
    
    def to_long(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); return MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); return MONTH_NAMES_LONG[i]
      else; return nil
      end
    end
    
  end
end

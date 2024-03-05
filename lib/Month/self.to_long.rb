# Month/self.to_long
# Month.to_long

# 20110822
# 0.8.1

require 'Month'

class Month
  class << self
    
    def to_long(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); MONTH_NAMES_LONG[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); MONTH_NAMES_LONG[i]
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); MONTH_NAMES_LONG[i]
      else; nil
      end
    end
    
  end
end

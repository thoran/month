# Month/self.to_num
# Month.to_num

# 20100707
# 0.8.0

require 'Month'

class Month
  class << self
    
    def to_num(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); return i+1
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); return i+1
      elsif i = MONTH_NUMBERS.to_a.index(month); return i+1
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); return i+1
      else; return nil
      end
    end
    
  end
end

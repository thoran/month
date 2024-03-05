# Month/self.day_short
# Month.day_short

# 20100706, 07
# 0.8.0

require 'date'
require 'Month'

class Month
  class << self
    
    def day_short(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        return WEEK_DAY_NAMES_SHORT[Date.new(year, month, date).wday]
      else
        return nil
      end
    end
    
  end
end

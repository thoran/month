# Month/self.day_short
# Month.day_short

# 20100702
# 0.7.0

# Changes since 0.6: 
# 1. Split to it's own file.  

class Month
  class << self
    
    def day_short(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        return DAY_NAMES_SHORT[Date.new(year, month, date).wday]
      else
        return nil
      end
    end
    
  end
end

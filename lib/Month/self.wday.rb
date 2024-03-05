# Month/self.wday
# Month.wday

# 20100707
# 0.8.0

class Month
  class << self
    
    def wday(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        return Date.new(year, month, date).wday
      else
        return nil
      end
    end
    
  end
end

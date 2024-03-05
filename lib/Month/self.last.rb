# Month/self.last
# Month.last

# 20110705
# 0.8.0

# Changes: 
# 1.

class Month
  class << self
    
    def last(month = Date.today.month, year = Date.today.year)
      if month == 1
        Month.new(12, year - 1)
      else
        Month.new(month - 1, year)
      end
    end
    
  end
end

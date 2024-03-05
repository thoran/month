# Month.last

# 2010.08.19
# 0.0.0

class Month
  class << self
    
    def last
      if Month.this.to_num == 12
        Month.new(1, Date.today.year + 1)
      else
        Month.new(Date.today.month + 1)
      end
    end
    
  end
end

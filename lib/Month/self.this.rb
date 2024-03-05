# Month.this

# 2010.08.19
# 0.0.0

class Month
  class << self
    
    def this
      Month.new(Date.today.month)
    end
    
  end
end

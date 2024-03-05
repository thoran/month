# Month.start

# 2010.08.19
# 0.0.0

# History: Derived from the still not quite sorted date and time classes I have been tinkering with for years...  

class Month
  
  class << self
    
    def start
      today = Date.today
      Date.new(today.year, today.month, 1)
    end
    alias_method :beginning, :start
    
  end
  
end

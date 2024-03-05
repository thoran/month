# Month.end

# 2010.08.19
# 0.0.0

# History: Derived from the still not quite sorted date and time classes I have been tinkering with for years...  

class Month
  
  class << self
    
    def end
      today = Date.today
      Date.new(today.year, today.month, self.days)
    end
    alias_method :finish, :end
    
  end
  
end

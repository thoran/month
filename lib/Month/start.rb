# Month#start

# 2010.08.19
# 0.0.0

# History: Derived from the still not quite sorted date and time classes I have been tinkering with for years...  

class Month
  
  def start
    Date.new(@year, @month, 1)
  end
  alias_method :beginning, :start
  
end

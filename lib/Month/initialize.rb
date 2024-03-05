# Month/initialize
# Month#initialize

# 20110822, 24
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. See the Notes...  

# Notes: 
# 1. With a view to compatibility with Francis Hwang's version of a Month class, and as a nod to Ruby's Date class, I have made it possible to supply the year optionally, but first, rather than second if there are two arguments.  
# 2. It might actually be nice if the Date class worked the same way.  
# 3. Generally I find it the Ruby way to assume that which can be assumed, and to only require explicitness when necessary.  In this instance that means that if I instantiate an object with a month only, then I should be able to assume the year.  











require 'date'

class Month
  
  attr_reader :month, :year
  
  def initialize(*args)
    @month, @year = (
      case args.size
        when 0; [Date.today.month, Date.today.year]
        when 1; [args[0], Date.today.year]
        when 2; [args[1], args[0]]
        else; raise ArgumentError # ArgumentError: wrong number of arguments (0 for 1)
      end
    )
  end
  
end

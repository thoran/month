# Month/initialize
# Month#initialize

# 20110822, 24, 25, 27
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. See the Notes...  
# 3. + custom ArgumentError handling.  
# 4. It now checks that @month is in the range of 1 to 12

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
        else; raise ArgumentError, "too many arguments (#{args.size} for 0, 1, or 2)"
      end
    )
    fail unless (1..12).include?(@month)
  end
  
end

# Month/self.begin_date
# Month#self.begin_date

# 20111204
# 0.9.1

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. 

require 'date'

class Month
  class << self
    
    def begin_date(*args)
      year, month = (
        case args.size
        when 0; [Date.today.year, Date.today.month]
        when 1; [Date.today.year, args[0]]
        when 2; [args[0], args[1]]
        else; raise ArgumentError, "too many arguments (#{args.size} for 0, 1, or 2)"
        end
      )
      fail unless (1..12).include?(month)
      Date.new(year, month, 1)
    end
    
  end
end

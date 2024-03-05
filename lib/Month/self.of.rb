# Month/self.of
# Month.of

# 20110822, 23
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.8.1.  
# 2. - require 'Month', since I think it is reasonable to assume that the class Month and constants are already loaded.  
# 3. /self.new/new/.  

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def of(month, year = Date.today.year)
      case month.to_s
      when /^(J|j)an$/, /^(J|j)anuary$/; new(1, year)
      when /^(F|f)eb$/, /^(F|f)ebruary$/; new(2, year)
      when /^(M|m)ar$/, /^(M|m)arch$/; new(3, year)
      when /^(A|a)pr$/, /^(A|a)pril$/; new(4, year)
      when /^(M|m)ay$/; new(5, year)
      when /^(J|j)un$/, /^(J|j)une$/; new(6, year)
      when /^(J|j)ul$/, /^(J|j)uly$/; new(7, year)
      when /^(A|a)ug$/, /^(A|a)ugust$/; new(8, year)
      when /^(S|s)ep$/, /^(S|s)eptember$/; new(9, year)
      when /^(O|o)ct$/, /^(O|o)ctober$/; new(10, year)
      when /^(N|n)ov$/, /^(N|n)ovember$/; new(11, year)
      when /^(D|d)ec$/, /^(D|d)ecember$/; new(12, year)
      else; nil
      end
    end
    
  end
end

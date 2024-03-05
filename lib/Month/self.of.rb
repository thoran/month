# Month/self.of
# Month.of

# 20110822, 23, 24
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. /self.new/new/.  
# 4. Tidied the regexes.  
# 5. Reversed the arguments sent to new().  

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def of(month, year = Date.today.year)
      case month.to_s
      when /^(J|j)an(uary)*$/; new(year, 1)
      when /^(F|f)eb(ruary)*$/; new(year, 2)
      when /^(M|m)ar(ch)*$/; new(year, 3)
      when /^(A|a)pr(il)*$/; new(year, 4)
      when /^(M|m)ay$/; new(year, 5)
      when /^(J|j)un(e)*$/; new(year, 6)
      when /^(J|j)ul(y)*$/; new(year, 7)
      when /^(A|a)ug(ust)*$/; new(year, 8)
      when /^(S|s)ep(tember)*$/; new(year, 9)
      when /^(O|o)ct(ober)*$/; new(year, 10)
      when /^(N|n)ov(ember)*$/; new(year, 11)
      when /^(D|d)ec(ember)*$/; new(year, 12)
      else; nil
      end
    end
    
  end
end

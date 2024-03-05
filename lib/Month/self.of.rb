# Month/self.of
# Month.of

# 20110707
# 0.8.0

require 'date'
require 'Month'

class Month
  class << self
    
    def of(month, year = Date.today.year)
      case month.to_s
      when /^(J|j)an$/, /^(J|j)anuary$/; self.new(1, year)
      when /^(F|f)eb$/, /^(F|f)ebruary$/; self.new(2, year)
      when /^(M|m)ar$/, /^(M|m)arch$/; self.new(3, year)
      when /^(A|a)pr$/, /^(A|a)pril$/; self.new(4, year)
      when /^(M|m)ay$/; self.new(5, year)
      when /^(J|j)un$/, /^(J|j)une$/; self.new(6, year)
      when /^(J|j)ul$/, /^(J|j)uly$/; self.new(7, year)
      when /^(A|a)ug$/, /^(A|a)ugust$/; self.new(8, year)
      when /^(S|s)ep$/, /^(S|s)eptember$/; self.new(9, year)
      when /^(O|o)ct$/, /^(O|o)ctober$/; self.new(10, year)
      when /^(N|n)ov$/, /^(N|n)ovember$/; self.new(11, year)
      when /^(D|d)ec$/, /^(D|d)ecember$/; self.new(12, year)
      else; nil
      end
    end
    
  end
end

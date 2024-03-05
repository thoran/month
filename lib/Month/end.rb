# Month/end
# Month#end

# 20110702
# 0.7.0

# Changes: 
# 1. Bumped version number to correspond with Month's overall version number.  
# 2. Changed to make use of the class method.  
# 3. /self.class/Month/, since I expect that will be marginally quicker.  

require 'Month/self.end'

class Month
  
  def end
    Month.end(@month, @year)
  end
  
end

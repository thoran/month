# Month/_equals
# Month#==

# 20111204
# 0.9.1

class Month
  
  def ==(other_month)
    self.year == other_month.year && self.month == other_month.month
  end
  
end

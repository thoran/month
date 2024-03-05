# Month/initialize
# Month#initialize

# 20110822, 24
# 0.9.0

require 'date'

class Month
  
  attr_reader :month, :year
  
  def initialize(month = Date.today.month, year = Date.today.year)
    @month = month
    @year = year
  end
  
end

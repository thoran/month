# Date/to_month.rb
# Date#to_month

# 20140524, 0606

require 'Month/self.from_date'

class Date

  def to_month
    Month.from_date(self)
  end

end

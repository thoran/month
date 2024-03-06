# Date/to_month.rb
# Date#to_month

require 'Month/initialize'

class Date

  def to_month
    Month.new(self.year, self.month)
  end

end

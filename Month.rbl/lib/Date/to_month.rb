# Month/to_month.rb
# Month#to_month

require 'Month/initialize'

class Date

  def to_month
    Month.new(self.year, self.month)
  end

end

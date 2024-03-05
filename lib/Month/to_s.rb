# Month/to_s
# Month#to_s

# 20110706, 07
# 0.8.0

require 'Month'
require 'Month/to_long'
require 'Month/to_short'

class Month
  
  def to_s(month_name_length = :long)
    case month_name_length
    when :long, 'long'; "#{self.to_long} #{@year}"
    when :short, 'short'; "#{self.to_short} #{@year}"
    when :iso, :iso_8601, 'iso', 'iso_8601'; "#{self.year}-" + "%02d" % self.month
    end
  end
  
end

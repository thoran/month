# Month/to_s
# Month#to_s

# 20110824, 27
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  
# 4. /self.//.  
# 5. /month_name_length/month_name_length.to_sym/.  
# 6. month_name_length now defaults to :short, so as Francis Hwang's test suite passes.  

require 'Month/initialize'
require 'Month/to_long'
require 'Month/to_short'

class Month
  
  def to_s(month_name_length = :short)
    case month_name_length.to_sym
    when :long; "#{to_long} #{year}"
    when :short, 'short'; "#{to_short} #{year}"
    when :iso, :iso_8601; "#{year}-" + "%02d" % month
    end
  end
  
end

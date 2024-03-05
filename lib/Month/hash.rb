# Month/hash
# Month#hash

# 20110827
# 0.9.0

# Notes: Provided so as to make Francis Hwang's version 0.1.2 of Month test suite pass.  

require 'Month/initialize'

class Month
  
  def hash
    "#{year}#{month}".to_i
  end
  
end

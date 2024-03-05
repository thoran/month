# Month

# 20110702, 04, 05
# 0.7.0

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Discussion: 
# 1. Some methods might be better moved to Date or another class...  

# Changes since 0.6: 
# 1. Split each method except self.method_missing() #initialize() to it's own file.  
# 2. + attr_reader :month, :year.  

# Todo: 
# 1. It isn't essential that this be done, but it might be nice to acknowledge that self#cdates does not need to check whether the input day is a Fixnum or not, since it is using ISO day representation and there is no zero value as it starts at 1, it means that non-numeric strings will not convert to zero.  I could also consider using #to_str inside a begin-end block or something like that...  
# 2. I might consider creating a MONTH_NUMBERS_AS_STRINGS constant, which might save a few cycles here and there.  Done as of 0.5.0.  
# 3. Write tests for the default values for month for the following methods: 
#   self#days; Done as of 20110702.  
#   self#days_in_month; Done as of 20110704.  
#   self#to_long; Done as of 20110702.  
#   self#to_short; Done as of 20110702.  
#   self#to_num; Done as of 20110702.  
#   self#to_number.  Done as of 20110702.  
# 4. Write tests for: 
#   self#date; Done as of 20110704.  
#   self#cdate.  Done as of 20110704.  

require 'Month/self.of'

class Month
  
  require 'date'
  
  MONTH_NAMES_LONG = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  MONTH_NAMES_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  MONTH_NUMBERS = 1..12
  MONTH_NUMBERS_AS_STRINGS = '1'..'12'
  
  MONTH_DAYS = [31, Proc.new{|year| Date.leap?(year) ? 29 : 28}, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  
  MONTH_DAY_NUMBERS = 1..31
  
  ISO_8601_DAY_NAMES_LONG = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  ISO_8601_DAY_NAMES_SHORT = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
  ISO_8601_WEEK_DAY_NUMBERS = 1..7
  ISO_8601_WEEK_DAY_NUMBERS_AS_STRINGS = '1'..'7'
  
  DAY_NAMES_LONG = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  DAY_NAMES_SHORT = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
  WEEK_DAY_NUMBERS = 0..6
  WEEK_DAY_NUMBERS_AS_STRINGS = '0'..'6'
  
  class << self
    
    def method_missing(method_name, *args, &block)
      if month_object = of(method_name, *args)
       month_object
      else
       super(method_name, *args, &block)
      end
    end
    
  end # class << self
  
  attr_reader :month, :year
  
  def initialize(month = Date.today.month, year = Date.today.year)
    @month = month
    @year = year
  end
  
end

# Month

# 20110705, 06, 07
# 0.8.0

# Description: Month does conversions of various formats for the representation of months and can when instantiated represent a specific month in time.  

# Discussion: The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Changes since 0.7: 
# 1. + attr_reader :month, :year.  
# 2. + #begin_date().  
# 3. + #beginning_of_month().  
# 4. + #beginning_of_the_month().  
# 5. + #comparator().  
# 6. + #each_day().  
# 7. + #end_date().  
# 8. + #end_of_month().  
# 9. + #end_of_the_month().  
# 10. + #eql?().  
# 11. + #finish_date().  
# 12. + #finish_of_month().  
# 13. + #finish_of_the_month().  
# 14. + #last().  
# 15. + #minus().  
# 16. + #next().  
# 17. + #plus().  
# 18. + #prev().  
# 19. + #previous().  
# 20. + #prior().  
# 21. + self.begin_date().  
# 22. + self.beginning_of_month().  
# 23. + self.beginning_of_the_month().  
# 24. + self.day_shortest().  
# 25. + self.end_date().  
# 26. + self.end_of_month().  
# 27. + self.end_of_the_month().  
# 28. + self.finish_date().  
# 29. + self.finish_of_month().  
# 30. + self.finish_of_the_month().  
# 31. ^ self.method_missing() (to it's own file).  
# 32. + self.prev().  
# 33. + self.previous().  
# 34. + self.prior().  
# 35. + self.start_date().  
# 36. + self.start_of_month().  
# 37. + self.start_of_the_month().  
# 38. + self.succ().  
# 39. + #start_date().  
# 40. + #start_of_month().  
# 41. + #start_of_the_month().  
# 42. + #succ().  
# 43. + #to_s().  
# 44. /DAY_NAMES_LONG/WEEK_DAY_NAMES_LONG/.  
# 45. /DAY_NAMES_SHORT/WEEK_DAY_NAMES_SHORT/.  
# 46. + WEEK_DAY_NAMES_SHORTEST.  
# 47. /ISO_8601_DAY_NAMES_LONG/ISO_8601_WEEK_DAY_NAMES_LONG/.  
# 48. /ISO_8601_DAY_NAMES_SHORT/ISO_8601_WEEK_DAY_NAMES_SHORT/.  
# 49. + ISO_8601_WEEK_DAY_NAMES_SHORTEST.  

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), 'lib')))

require 'date'
require 'Month/self.of'

class Month
  
  VERSION = '0.8.0'
  
  MONTH_NAMES_LONG = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  MONTH_NAMES_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  MONTH_NUMBERS = 1..12
  MONTH_NUMBERS_AS_STRINGS = '1'..'12'
  
  MONTH_DAYS = [31, Proc.new{|year| Date.leap?(year) ? 29 : 28}, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  
  MONTH_DAY_NUMBERS = 1..31
  
  ISO_8601_WEEK_DAY_NAMES_LONG = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  ISO_8601_WEEK_DAY_NAMES_SHORT = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
  ISO_8601_WEEK_DAY_NAMES_SHORTEST = ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su']
  ISO_8601_WEEK_DAY_NUMBERS = 1..7
  ISO_8601_WEEK_DAY_NUMBERS_AS_STRINGS = '1'..'7'
  
  WEEK_DAY_NAMES_LONG = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  WEEK_DAY_NAMES_SHORT = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
  WEEK_DAY_NAMES_SHORTEST = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa']
  WEEK_DAY_NUMBERS = 0..6
  WEEK_DAY_NUMBERS_AS_STRINGS = '0'..'6'
  
  attr_reader :month, :year
  
  def initialize(month = Date.today.month, year = Date.today.year)
    @month = month
    @year = year
  end
  
end

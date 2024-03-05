# Month

# 20140506, 08
# 0.9.3

# Description: Month does conversions of various formats for the representation of months and can when instantiated represent a specific month in time.  

# Discussion: The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Changes since 0.8: 
# 1. Month.rb is now a load file.  
# 0/1
# 2. 0.9.0 introduced the ability to specify either a month or a year and for the month to occupy either place for Month.new, but this is now extended throughout, and applies to the interface of all the class methods.  
# 3. + Month#last_month.  
# 4. + Month.last_month.  
# 5. + Month#prev_month.  
# 6. + Month.prev_month.  
# 7. + Month#previous_month.  
# 8. + Month.previous_month.  
# 9. + Month#prior_month.  
# 10. + Month.prior_month.  
# 11. + Month#next_month.  
# 12. + Month.next_month.  
# 13. + Month#succ_month.  
# 14. + Month.succ_month.  
# 15. + Month#successor.  
# 16. + Month.successor.  
# 17. + Month#successor_month.  
# 18. + Month.successor_month.  
# 19. + Month#_equals, since Month instance equivalence stopped working in tc_Month_self.of.  
# 20. + Month.now.  
# 21. - Month#today.  
# 22. + Month#day_short.  
# 23. + Month#day_long.  
# 24. + Month#day_shortest.  
# 25. + Month#day.  
# 26. /comparator.rb/_comparator.rb/.  
# 27. /minus.rb/_minus.rb/.  
# 28. /plus.rb/_plus.rb/.  
# 1/2
# 29. /_minus.rb/minus.rb/.  
# 30. /_plus.rb/plus.rb/.  
# 2/3
# 31. /MiniTest::Unit::TestCase/MiniTest::Test/.
# 32. ~ test/ts_Month.rb, so that it would run reliably regardless of from where it was called.
# 33. Made a similar change here as per 32.
# 34. Removed all date, version, and change information from each library file as that should go here only.
# 35. Removed all date, version, and change information from each test file as that should go here only.

lib_dir = File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'Month/Constants'
require 'Month/_all'

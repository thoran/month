# Month.rb
# Month

# 20171008
# 0.9.4

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
# 3/4
# 36. Each method file calls "require 'Month/Constants'" anyway, so that was removed from here.
# 37. Tidied test/ts_Month.rb some.
# 38. - Month/_all.rb and copied the contents here.

lib_dir = File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

load 'Month/_comparator.rb'
load 'Month/begin_date.rb'
load 'Month/beginning.rb'
load 'Month/beginning_of_month.rb'
load 'Month/beginning_of_the_month.rb'
load 'Month/cdate.rb'
load 'Month/cdates.rb'
load 'Month/date.rb'
load 'Month/dates.rb'
load 'Month/day.rb'
load 'Month/days.rb'
load 'Month/days_in_month.rb'
load 'Month/days_in_the_month.rb'
load 'Month/day_long.rb'
load 'Month/day_short.rb'
load 'Month/day_shortest.rb'
load 'Month/each_day.rb'
load 'Month/end.rb'
load 'Month/end_date.rb'
load 'Month/end_of_month.rb'
load 'Month/end_of_the_month.rb'
load 'Month/eqlQ.rb'
load 'Month/finish.rb'
load 'Month/finish_date.rb'
load 'Month/finish_of_month.rb'
load 'Month/finish_of_the_month.rb'
load 'Month/hash.rb'
load 'Month/initialize.rb'
load 'Month/last.rb'
load 'Month/last_month.rb'
load 'Month/method_missing.rb'
load 'Month/minus.rb'
load 'Month/next.rb'
load 'Month/next_month.rb'
load 'Month/plus.rb'
load 'Month/prev.rb'
load 'Month/prev_month.rb'
load 'Month/previous.rb'
load 'Month/previous_month.rb'
load 'Month/prior.rb'
load 'Month/prior_month.rb'
load 'Month/self.begin_date.rb'
load 'Month/self.beginning.rb'
load 'Month/self.beginning_of_month.rb'
load 'Month/self.beginning_of_the_month.rb'
load 'Month/self.cdate.rb'
load 'Month/self.cdates.rb'
load 'Month/self.date.rb'
load 'Month/self.dates.rb'
load 'Month/self.day.rb'
load 'Month/self.day_long.rb'
load 'Month/self.day_short.rb'
load 'Month/self.day_shortest.rb'
load 'Month/self.days.rb'
load 'Month/self.days_in_month.rb'
load 'Month/self.days_in_the_month.rb'
load 'Month/self.end.rb'
load 'Month/self.end_date.rb'
load 'Month/self.end_of_month.rb'
load 'Month/self.end_of_the_month.rb'
load 'Month/self.finish.rb'
load 'Month/self.finish_date.rb'
load 'Month/self.finish_of_month.rb'
load 'Month/self.finish_of_the_month.rb'
load 'Month/self.last.rb'
load 'Month/self.last_month.rb'
load 'Month/self.method_missing.rb'
load 'Month/self.next.rb'
load 'Month/self.next_month.rb'
load 'Month/self.now.rb'
load 'Month/self.of.rb'
load 'Month/self.prev.rb'
load 'Month/self.prev_month.rb'
load 'Month/self.previous.rb'
load 'Month/self.previous_month.rb'
load 'Month/self.prior.rb'
load 'Month/self.prior_month.rb'
load 'Month/self.start.rb'
load 'Month/self.start_date.rb'
load 'Month/self.start_of_month.rb'
load 'Month/self.start_of_the_month.rb'
load 'Month/self.succ.rb'
load 'Month/self.succ_month.rb'
load 'Month/self.successor.rb'
load 'Month/self.successor_month.rb'
load 'Month/self.this.rb'
load 'Month/self.to_i.rb'
load 'Month/self.to_long.rb'
load 'Month/self.to_num.rb'
load 'Month/self.to_number.rb'
load 'Month/self.to_short.rb'
load 'Month/self.today.rb'
load 'Month/self.wday.rb'
load 'Month/start.rb'
load 'Month/start_date.rb'
load 'Month/start_of_month.rb'
load 'Month/start_of_the_month.rb'
load 'Month/succ.rb'
load 'Month/successor.rb'
load 'Month/succ_month.rb'
load 'Month/successor_month.rb'
load 'Month/to_date.rb'
load 'Month/to_i.rb'
load 'Month/to_long.rb'
load 'Month/to_num.rb'
load 'Month/to_number.rb'
load 'Month/to_s.rb'
load 'Month/to_short.rb'

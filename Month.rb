# Month

# 20110822, 23
# 0.9.0

# Description: Month does conversions of various formats for the representation of months and can when instantiated represent a specific month in time.  

# Discussion: The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to do the conversions.  

# Changes since 0.8: 
# 1. Month.rb is now a load file.  

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), 'lib')))
require 'Month/Constants'

# ts_Month

# 20110702
# 0.7.0

# Changes: 
# 1. Bumped version number to correspond with Month's overall version number.  
# 2. /month/Month/.  

require 'test/unit'
$LOAD_PATH.unshift(File.expand_path('../lib'))
require 'Month'

tests = Dir["**/*.rb"].reject!{|file| file == File.basename(__FILE__)}
tests.each{|test| require test}

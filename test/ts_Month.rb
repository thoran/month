# ts_Month

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..')))

require 'Month'
require 'test/unit'

tests = Dir["**/*.rb"].reject!{|file| file == File.basename(__FILE__)}
tests.each{|test| require test}

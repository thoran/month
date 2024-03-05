# ts_Month

# 20110705
# 0.8.0

# Changes: 

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..')))

require 'Month'
require 'Month/comparator'
require 'test/unit'

tests = Dir["**/*.rb"].reject!{|file| file == File.basename(__FILE__)}
tests.each{|test| require test}

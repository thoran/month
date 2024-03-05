# test/ts_Month.rb

require 'minitest/autorun'

test_dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift(test_dir) unless $LOAD_PATH.include?(test_dir)

lib_dir = File.expand_path(File.join(test_dir, '..', 'lib'))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require File.join(lib_dir, 'Month.rb')

test_files = Dir[File.join(test_dir, '*.rb')].reject{|file| file == File.expand_path(__FILE__)}
test_files.each{|test_file| load test_file}

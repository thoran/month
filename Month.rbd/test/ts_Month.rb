# test/ts_Month.rb

gem 'minitest'
require 'minitest/autorun'

lib_dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

#Dir[File.join("#{lib_dir}", 'Month', '*.rb')].each{|lib_filename| require lib_filename}
require File.join("#{lib_dir}", 'Month', '_all.rb')

test_dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift(test_dir) unless $LOAD_PATH.include?(test_dir)

tests = Dir[File.join(test_dir, '*.rb')].reject!{|file| file == File.expand_path(__FILE__)}
tests.each{|test| require test}

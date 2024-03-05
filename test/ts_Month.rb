#!/usr/bin/env ruby
#
# Month Test Suite
# 
# 20061001
# 0.0.0
#
# Changes: 

require "../lib/month"
require "test/unit"

tests = Dir["**/*.rb"].reject! {|file| file == File.basename(__FILE__)}
tests.each {|test| require test}

# Month.rb
# Month

lib_dir = File.expand_path(File.join(File.dirname(__FILE__)))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'Date/to_month'
require 'Month/Constants'

lib_files = Dir[File.join(lib_dir, 'Month', '*.rb')].reject{|file| file =~ /Constants/ }
lib_files.each{|lib_file| load lib_file}

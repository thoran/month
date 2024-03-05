# Month/self.cdates
# Month.cdates

# 20110824
# 0.9.0

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/Constants'/.  

require 'Array/extract_optionsX'
require 'date'
require 'Month/Constants'
require 'Month/self.to_num'
require 'Month/self.days'

class Month
  class << self
    
    def cdates(month = Date.today.month, year = Date.today.year, *args)
      options = args.extract_options!
      list_of_dates = []
      month = self.to_num(month)
      return nil if month.nil?
      unless options[:day].nil?
        if e = ISO_8601_WEEK_DAY_NAMES_LONG.to_a.index(options[:day].to_s.capitalize); weekday_number = e + 1
        elsif e = ISO_8601_WEEK_DAY_NAMES_SHORT.to_a.index(options[:day].to_s.capitalize); weekday_number = e + 1
        elsif e = ISO_8601_WEEK_DAY_NAMES_SHORTEST.to_a.index(options[:day].to_s.capitalize); weekday_number = e + 1
        elsif ISO_8601_WEEK_DAY_NUMBERS_AS_STRINGS.to_a.member?(options[:day]); weekday_number = options[:day].to_i
        elsif ISO_8601_WEEK_DAY_NUMBERS.to_a.member?(options[:day].to_i) && options[:day].class == Fixnum; weekday_number = options[:day].to_i
        else; return nil
        end
        Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
          if options[:date_objects]
            list_of_dates << date if date.cwday == weekday_number
          else
            list_of_dates << date.mday if date.cwday == weekday_number
          end
        end
      else
        Date.new(year, month, 1).upto(Date.new(year, month, self.days(month, year))) do |date|
          if options[:date_objects]
            list_of_dates << date
          else
            list_of_dates << date.mday
          end
        end
      end
      list_of_dates
    end
    
  end
end

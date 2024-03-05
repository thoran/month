# Month/self.cdate
# Month.cdate

# 20110822
# 0.8.1

require 'date'
require 'Month/self.cdates'

class Month
  class << self
    
    def cdate(which_day, day, month = Date.today.month, year = Date.today.year)
      all = self.cdates(month, year, :day => day)
      case which_day.to_s.downcase
      when 'first', '1st', '1'; all[0]
      when 'second', '2nd', '2'; all[1]
      when 'third', '3rd', '3'; all[2]
      when 'fourth', '4th', '4'; all[3]
      when 'fifth', '5th', '5'; all[4]
      when 'last', 'ultimate'; all[all.size - 1]
      when 'second last', '2nd last', 'penultimate'; all[all.size - 2]
      when 'third last', '3rd last'; all[all.size - 3]
      when 'fourth last', '4th last'; all[all.size - 4]
      else; nil
      end
    end
    
  end
end

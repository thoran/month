# Month

# 20061001
# 0.0.6

# Description: Some code to do conversions of various formats for the representation of months.  The advantage that this has over the standard Date and Time classes is that this can handle just months and one doesn't have to specify a whole date or time in order to the conversions.  

# Discussion: It still May however be simpler, and faster, to use Date or Time to do the conversions, rather than doing it 'by hand' as I'm doing here...  

# History: The beginnings of this were derived from some code from susy.rb.  

# Changes: 
# 1. Ruby didn't like my use of two regexes in the when part of the case, so given that I have some further checks against the class variables, I Decided it was 'safe' (and consistent) with the result already expected to dispense with one of the regexes from each when.  
# 2. Actually what it didn't like was the excess end at the end of the second when in self#to_long.  
# 3. I neglected to require 'date'.  
# 4. I'd left out some short month names in self#to_short.  I'm surprised there weren't more errors from testing.  I know: once a test fails, no further assertions are attempted!  
# 5. In self#days, I'd forgotten to test for where a month was provided as a number as a string, so I added the tests to_num(1).to_s...to_num(12).to_s into each of the when clauses of self#days.  I was considering adding in the method to_num_as_string, but Decided that it wasn't necessary.  Hmm...  
# 6. I now test for the capitalized version of month against the list of valid month names.  
# 7. I also Decided to alter all the downcases to capitalizations.  
# 8. In self#days I now stingify and capitalize the variable in the case statement, since the expectation is there that the returned value will be capitalized.  And, why was this working before?...  
# 9. I now no longer need the non-to_s version of the test in self#days for a number, since it is now stringified.  

class Month
  
  require 'date'
  
  @@long_months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  @@short_months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  @@number_months = 1..12
  
  def self.to_long(month)
    month = month.to_s
    case month
      when /\D/
        if (@@short_months.to_a.member?(month.capitalize) || @@long_months.to_a.member?(month.capitalize))
          case month.capitalize
            when 'Jan', 'January'; long_month = 'January'
            when 'Feb', 'February'; long_month = 'February'
            when 'Mar', 'March'; long_month = 'March'
            when 'Apr', 'April'; long_month = 'April'
            when 'May'; long_month = 'May'
            when 'Jun', 'June'; long_month = 'June'
            when 'Jul', 'July'; long_month = 'July'
            when 'Aug', 'August'; long_month = 'August'
            when 'Sep', 'September'; long_month = 'September'
            when 'Oct', 'October'; long_month = 'October'
            when 'Nov', 'November'; long_month = 'November'
            when 'Dec', 'December'; long_month = 'December'
          end
          return long_month
        else
          return nil
        end
      when /\d/
        if @@number_months.to_a.member?(month.to_i)
          case month
            when '1'; long_month = 'January'
            when '2'; long_month = 'February'
            when '3'; long_month = 'March'
            when '4'; long_month = 'April'
            when '5'; long_month = 'May'
            when '6'; long_month = 'June'
            when '7'; long_month = 'July'
            when '8'; long_month = 'August'
            when '9'; long_month = 'September'
            when '10'; long_month = 'October'
            when '11'; long_month = 'November'
            when '12'; long_month = 'December'
          end
          return long_month
        else
          return nil
        end
      else
        return nil
      end
  end
  
  def self.to_short(month)
    month = month.to_s
    case month
      when /\D/
        if (@@short_months.to_a.member?(month.capitalize) || @@long_months.to_a.member?(month.capitalize))
          case month.capitalize
            when 'Jan', 'January'; short_month = 'Jan'
            when 'Feb', 'February'; short_month = 'Feb'
            when 'Mar', 'March'; short_month = 'Mar'
            when 'Apr', 'April'; short_month = 'Apr'
            when 'May'; short_month = 'May'
            when 'Jun', 'June'; short_month = 'Jun'
            when 'Jul', 'July'; short_month = 'Jul'
            when 'Aug', 'August'; short_month = 'Aug'
            when 'Sep', 'September'; short_month = 'Sep'
            when 'Oct', 'October'; short_month = 'Oct'
            when 'Nov', 'November'; short_month = 'Nov'
            when 'Dec', 'December'; short_month = 'Dec'
          end
          return short_month
        else
          return nil
        end
      when /\d/
        if @@number_months.to_a.member?(month.to_i)
          case month
            when '1'; short_month = 'Jan'
            when '2'; short_month = 'Feb'
            when '3'; short_month = 'Mar'
            when '4'; short_month = 'Apr'
            when '5'; short_month = 'May'
            when '6'; short_month = 'Jun'
            when '7'; short_month = 'Jul'
            when '8'; short_month = 'Aug'
            when '9'; short_month = 'Sep'
            when '10'; short_month = 'Oct'
            when '11'; short_month = 'Nov'
            when '12'; short_month = 'Dec'
          end
          return short_month
        else
          return nil
        end
      else
        return nil
      end
  end
  
  # Consider putting an error in here for when there is no sensible result, rather than returning nil.  
  def self.to_num(month)
    month = month.to_s
    case month
      when /\D/ 
        if (@@short_months.to_a.member?(month.capitalize) || @@long_months.to_a.member?(month.capitalize))
          case month.capitalize
            when 'Jan', 'January'; number_month = 1
            when 'Feb', 'February'; number_month = 2
            when 'Mar', 'March'; number_month = 3
            when 'Apr', 'April'; number_month = 4
            when 'May'; number_month = 5
            when 'Jun', 'June'; number_month = 6
            when 'Jul', 'July'; number_month = 7
            when 'Aug', 'August'; number_month = 8
            when 'Sep', 'September'; number_month = 9
            when 'Oct', 'October'; number_month = 10
            when 'Nov', 'November'; number_month = 11
            when 'Dec', 'December'; number_month = 12
          end
          return number_month
        else
          return nil
        end
      when /\d/
        if @@number_months.to_a.member?(month.to_i)
          return month.to_i
        else
          return nil
        end
      else
        return nil
      end
  end
  
  def self.to_number(month)
    self.to_num(month)
  end
  
  def self.days(month, year = Date.today.year)
    case month.to_s.capitalize
      when to_long(1), to_short(1), to_num(1).to_s; days_in_month = 31
      when to_long(2), to_short(2), to_num(2).to_s; Date.leap?(year) ? days_in_month = 29 : days_in_month = 28
      when to_long(3), to_short(3), to_num(3).to_s; days_in_month = 31
      when to_long(4), to_short(4), to_num(4).to_s; days_in_month = 30
      when to_long(5), to_short(5), to_num(5).to_s; days_in_month = 31
      when to_long(6), to_short(6), to_num(6).to_s; days_in_month = 30
      when to_long(7), to_short(7), to_num(7).to_s; days_in_month = 31
      when to_long(8), to_short(8), to_num(8).to_s; days_in_month = 31
      when to_long(9), to_short(9), to_num(9).to_s; days_in_month = 30
      when to_long(10), to_short(10), to_num(10).to_s; days_in_month = 31
      when to_long(11), to_short(11), to_num(11).to_s; days_in_month = 30
      when to_long(12), to_short(12), to_num(12).to_s; days_in_month = 31
      else
        return nil
    end
    return days_in_month
  end
  
  def self.days_in_month(month, year = Date.today.year)
    self.days(month, year)
  end
  
end

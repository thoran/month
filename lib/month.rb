class Month
  @@long_months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  @@short_months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  @@number_months = 1..12
  
  def self.to_long(month)
    month = month.to_s
    case month
      when (/\w/ && /\D/)
        if (@@short_months.to_a.member?(month) || @@long_months.to_a.member?(month))
          case month.downcase
            when 'jan', 'january'; long_month = 'January'
            when 'feb', 'february'; long_month = 'February'
            when 'mar', 'march'; long_month = 'March'
            when 'apr', 'april'; long_month = 'April'
            when 'may'; long_month = 'May'
            when 'jun', 'june'; long_month = 'June'
            when 'jul', 'july'; long_month = 'July'
            when 'aug', 'august'; long_month = 'August'
            when 'sep', 'september'; long_month = 'September'
            when 'oct', 'october'; long_month = 'October'
            when 'nov', 'november'; long_month = 'November'
            when 'dec', 'december'; long_month = 'December'
          end
          return long_month
        else
          return nil
        end
      end
      when (/\w/ && /\d/)
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
      when (/\w/ && /\D/) 
        if (@@short_months.to_a.member?(month) || @@long_months.to_a.member?(month))
          case month.downcase
            when 'jan', 'january'; short_month = 'Jan'
            when 'feb', 'february'; short_month = 'Feb'
            when 'mar', 'march'; short_month = 'Mar'
            when 'apr', 'april'; short_month = 'Apr'
            when 'may'; short_month = 'May'
            when 'june'; short_month = 'Jun'
            when 'july'; short_month = 'Jul'
            when 'august'; short_month = 'Aug'
            when 'september'; short_month = 'Sep'
            when 'october'; short_month = 'Oct'
            when 'november'; short_month = 'Nov'
            when 'december'; short_month = 'Dec'
          end
          return short_month
        else
          return nil
        end
      when (/\w/ && /\d/)
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
      when (/\w/ && /\D/) 
        if (@@short_months.to_a.member?(month) || @@long_months.to_a.member?(month))
          case month.downcase
            when 'jan', 'january'; number_month = 1
            when 'feb', 'february'; number_month = 2
            when 'mar', 'march'; number_month = 3
            when 'apr', 'april'; number_month = 4
            when 'may'; number_month = 5
            when 'jun', 'june'; number_month = 6
            when 'jul', 'july'; number_month = 7
            when 'aug', 'august'; number_month = 8
            when 'sep', 'september'; number_month = 9
            when 'oct', 'october'; number_month = 10
            when 'nov', 'november'; number_month = 11
            when 'dec', 'december'; number_month = 12
          end
          return number_month
        else
          return nil
        end
      when (/\w/ && /\d/)
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
    case month
      when to_long(1), to_short(1), to_num(1); days_in_month = 31
      when to_long(2), to_short(2), to_num(2); Date.leap?(year) ? days_in_month = 29 : days_in_month = 28
      when to_long(3), to_short(3), to_num(3); days_in_month = 31
      when to_long(4), to_short(4), to_num(4); days_in_month = 30
      when to_long(5), to_short(5), to_num(5); days_in_month = 31
      when to_long(6), to_short(6), to_num(6); days_in_month = 30
      when to_long(7), to_short(7), to_num(7); days_in_month = 31
      when to_long(8), to_short(8), to_num(8); days_in_month = 31
      when to_long(9), to_short(9), to_num(9); days_in_month = 30
      when to_long(10), to_short(10), to_num(10); days_in_month = 31
      when to_long(11), to_short(11), to_num(11); days_in_month = 30
      when to_long(12), to_short(12), to_num(12); days_in_month = 31
      else
        return nil
    end
    return days_in_month
  end
  
  def self.days_in_month(month, year = Date.today.year)
    self.days(month, year)
  end
  
end

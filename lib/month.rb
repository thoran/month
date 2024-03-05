class Month
  @short_months = ['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec']
  @number_months = 1..12
  
  def self.to_long(month)
    month = month.to_s
    case month
      when (/\w/ && /\D/)
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
      when (/\w/ && /\d/)
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
  end
  
  def self.to_short(month)
    month = month.to_s
    case month
      when (/\w/ && /\D/) 
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
      when (/\w/ && /\d/)
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
  end
  
  # Consider putting an error in here for when there is no sensible result, rather than returning nil.  
  def self.to_number(month)
    month = month.to_s
    case month
      when (/\w/ && /\D/) 
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
      when (/\w/ && /\d/)
        if @number_months.to_a.member?(month)
          return month.to_i
        else
          return nil
        end
      else
        return nil
      end
  end
  
  def days(month year = Date.)
    case month
      when '1'; days = 31
      when '2'; days = 28  # Need to check for leap years; and should I bother with millenia?
      when '3'; days = 31
      when '4'; days = 30
      when '5'; days = 31
      when '6'; days = 30
      when '7'; days = 31
      when '8'; days = 31
      when '9'; days = 30
      when '10'; days = 31
      when '11'; days = 30
      when '12'; days = 31
    end
    return days
  end
  
end

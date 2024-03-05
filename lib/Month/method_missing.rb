# Month/method_missing
# Month#method_missing

# 20110822, 24
# 0.9.0

require 'Month/self.dates'

class Month
  
  def method_missing(method_name, *args, &block)
    case method_name.to_s
    when /^((m|M)o)|((m|M)on)(day|days)*$/; Month.dates(month, year, :day => 'Monday')
    when /^((t|T)u)|((t|T)ue)(sday|sdays)*$/; Month.dates(month, year, :day => 'Tuesday')
    when /^((w|W)e)|((w|W)ed)(nesday|nesdays)*$/; Month.dates(month, year, :day => 'Wednesday')
    when /^((t|T)h)|((t|T)hu)(rsday|rsdays)*$/; Month.dates(month, year, :day => 'Thursday')
    when /^((f|F)r)|((f|F)ri)(day|days)*$/; Month.dates(month, year, :day => 'Friday')
    when /^((s|S)a)|((s|S)at)(urday|urdays)*$/; Month.dates(month, year, :day => 'Saturday')
    when /^((s|S)u)|((s|S)un)(day|days)*$/; Month.dates(month, year, :day => 'Sunday')
    else; super(method_name, *args, &block)
    end
  end
  
end

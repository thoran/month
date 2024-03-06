# Month/self.from_date.rb
# Month.from_date

# 20140606

class Month
  class << self

    def from_date(date)
      Month.new(date.year, date.month)
    end

  end
end

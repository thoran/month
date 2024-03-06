# month.rb

## Description

This library enables the use of numeric or text representations of months, conversions between month and date objects, the ability to find the number of days and retrieve the dates for all days in a month, and the ability to move forward and back a month at a time.

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'month.rb'
```
And then execute:
```shell
$ bundle
```
Or install it yourself as:
```shell
$ gem install month.rb
```

## Usage

### 1. Instantiate a month in different ways
```ruby
  Month.new(2006, 1)
  # => #<Month @year = 2006, @month = 1>
  Month.new(1)
  # => #<Month @year = Date.today.year, @month = 1>
  Month.of('January')
  # => #<Month @year = Date.today.year, @month = 1>
  Month.of('Jan')
  # => #<Month @year = Date.today.year, @month = 1>
  Month.today
  # => #<Month @year = Date.today.year, @month = Date.today.month)>
```

### 2. Convert between month and date objects
```ruby
  Date.new(2006, 1, 1).to_month
  # => #<Month @year = 2006, @month = 1>
  Month.new(2006, 1).to_date
  # => #<Date @year = 2006, @month = 1, @day = 1>
```

### 3. Convert between numeric and text representations
```ruby
  Month.new(1).to_number
  # => 1
  Month.new(1).to_short
  # => 'Jan'
  Month.new(1).to_long
  # => 'January'
  Month.new(2006, 1).to_number
  # => 1
  Month.new(2006, 1).to_short
  # => 'Jan'
  Month.new(2006, 1).to_long
  # => 'January'
  Month.new(1).to_s
  # => "January #{Date.today.year}"
  Month.new(2011, 1).to_s(:long)
  # => "January #{Date.today.year}"
  Month.new(2011, 1).to_s('long')
  # => "January #{Date.today.year}"
  Month.new(2011, 1).to_s(:short)
  # => "Jan #{Date.today.year}"
  Month.new(2011, 1).to_s('short')
  # => "Jan #{Date.today.year}"
  Month.new(2011, 1).to_s
  # => 'January 2011'
  Month.new(2011, 1).to_s(:long)
  # => 'January 2011'
  Month.new(2011, 1).to_s('long')
  # => 'January 2011'
  Month.new(2011, 1).to_s(:short)
  # => 'Jan 2011'
  Month.new(2011, 1).to_s('short')
  # => 'Jan 2011'
  end
```

### 4. Compare months
```ruby
  Month.of('January') == Month.of('January')
  # => true
  Month.of('January') > Month.of('January')
  # => false
  Month.of('February') > Month.of('January')
  # => true
  Month.of('January') < Month.of('February')
  # => true
```

### 5. Find the dates at the beginning and end of the month
```ruby
  Month.beginning_of_month(2006, 1)
  # => #<Date @year = 2006, @month = 1, @day = 1>
  Month.end_of_month(2006, 1)
  # => #<Date @year = 2006, @month = 1, @day = 31>
  Month.new(2006, 1).beginning_of_month
  # => #<Date @year = 2006, @month = 1, @day = 1>
  Month.new(2006, 1).end_of_month
  # => #<Date @year = 2006, @month = 1, @day = 31>
```

### 6. Return day numbers or day name for all the days of a week for a given month or just for one day
```ruby
  Month.dates(2006, 10, day: 'Sunday')
  # => [1, 8, 15, 22, 29]
  Month.new(2011, 1).date('First', 'Monday')
  # => 3
  Month.new(2006, 10).day(1) # Return the day name of first day of the month.
  # => 'Sunday'
```

### 7. Return the number of days in a month
```ruby
  Month.days('January')
  # => 31
  Month.of('January').days
  # => 31
```

### 8. Move forward and backward a month or a year at a time
```ruby
  Month.new(2011, 1).previous_month
  # => #<Month @year = 2010, @month = 12>
  Month.new(2011, 1).next_month
  # => #<Month @year = 2011, @month = 2>
  Month.new(2011, 1).last_year
  # => #<Month @year = 2010, @month = 2>
  Month.new(2011, 1).next_year
  # => #<Month @year = 2012, @month = 1>
```

## Contributing

1. Fork it: https://github.com/thoran/month.rb/fork
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Create a new pull request

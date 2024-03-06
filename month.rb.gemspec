require_relative './lib/Month/VERSION'

Gem::Specification.new do |spec|
  spec.name = 'month.rb'

  spec.version = Month::VERSION
  spec.date = '2024-03-06'

  spec.summary = "A library to help working with months."
  spec.description = <<~DESCRIPTION
    This library enables the use of numeric or text representations of months,
    conversions between month and date objects,
    the ability to find the number of days and retrieve the dates for all days in a month,
    and the ability to move forward and back a month at a time.
  DESCRIPTION

  spec.author = 'thoran'
  spec.email = 'code@thoran.com'
  spec.homepage = 'http://github.com/thoran/month.rb'
  spec.license = 'MIT'

  spec.files = Dir['lib/**/*.rb']
  spec.required_ruby_version = '>= 1.8.6'

  spec.add_development_dependency('minitest')
end

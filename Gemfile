source "https://rubygems.org"

gem "rails", "~> 7.2.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  gem "brakeman", require: false

  gem "rubocop-rails-omakase", require: false

  gem "rubocop-rspec"
end

group :development do
  gem "web-console"

  gem "pry", "~> 0.14.2"
  gem "rubocop", require: false
  gem "faker"
end

group :test do
  gem "rspec-rails"
  gem "capybara"
  gem "selenium-webdriver"

  gem "simplecov"
end

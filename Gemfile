# frozen_string_literal: true

source "https://rubygems.org"

gem "bcrypt", "~> 3.1.7"
gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rails", "~> 7.2.1"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

gem "tzinfo-data", platforms: %i[windows jruby]

gem "bootsnap", require: false

gem "sassc-rails"

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"

  gem "brakeman", require: false

  gem "rubocop-rails-omakase", require: false

  gem "rubocop-rspec"
end

group :development do
  gem "web-console"

  gem "faker"
  gem "pry", "~> 0.14.2"
  gem "rubocop", require: false
end

group :test do
  gem "capybara"
  gem "rspec-rails"
  gem "selenium-webdriver"

  gem "simplecov"
end

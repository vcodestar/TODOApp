source "https://rubygems.org"

ruby "3.3.4"

# Rails framework
gem "rails", "~> 7.1.3", ">= 7.1.3.4"

# Asset pipeline for Rails
gem "sprockets-rails"

# Use Puma as the app server
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps
gem "importmap-rails"

# Hotwire libraries
gem "turbo-rails"
gem "stimulus-rails"

# JSON APIs
gem "jbuilder"

# Rack timeout to prevent slow requests from hanging
gem 'rack-timeout'

# Secure password handling
gem 'bcrypt', '~> 3.1.7'

# Time zone data for Windows platforms
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching
gem "bootsnap", require: false

# Grouped by environment
group :development, :test do
  # Use SQLite for development and test
  gem "sqlite3", "~> 1.4"

  # Debugging tools
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  # Console on exceptions pages
  gem "web-console"
end

group :test do
  # System testing tools
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  # PostgreSQL for production
  gem 'pg'
end

source 'https://rubygems.org'
ruby '2.5.0'
#ruby-gemset=starter-app

# Rails

gem 'rails', '~> 5.1.5'

# Default Rails gems

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'sdoc', group: :doc, require: false

# Project specific gems

gem 'high_voltage'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'devise'
gem 'haml-rails'
gem 'dotenv-rails'
gem 'globalize'
gem 'coveralls', require: false
gem 'font-awesome-rails'
gem 'jquery-easing-rails'
gem 'redis'
gem 'redis-rails'
gem 'resque'
gem 'resque-scheduler'
gem 'resque-web', require: 'resque_web'
gem 'localeapp'
gem 'httparty'
gem 'puma'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  # gem 'quiet_assets'
  gem 'spring'
  gem 'guard-rspec', require: false
end

group :test, :development do
  gem 'sqlite3'
  gem 'database_cleaner'
  gem 'parallel_tests'
  gem 'fuubar'
  gem 'factory_bot_rails'
  gem 'dotenv-rails'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'poltergeist'
  gem 'i18n-spec'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end

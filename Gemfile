source 'https://rubygems.org'
ruby '2.2.3'
#ruby-gemset=starter-app

# Rails

gem 'rails', '4.2.0'

# Default Rails gems

gem 'sass-rails', '5.0.1'
gem 'uglifier', '2.7.1'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '4.0.3'
gem 'turbolinks', '2.5.3'
gem 'jbuilder', '2.2.11'
gem 'sdoc', '0.4.1', group: :doc, require: false

# Project specific gems

gem 'high_voltage', '2.2.1'
gem 'bootstrap-sass', '3.3.3'
gem 'autoprefixer-rails', '5.1.7'
gem 'devise', '3.4.1'
gem 'haml-rails'
gem 'dotenv-rails'
gem 'globalize'

group :development do
  gem 'better_errors', '2.1.1'
  gem 'binding_of_caller', '0.7.2', :platforms=>[:mri_21]
  gem 'quiet_assets', '1.1.0'
  gem 'spring', '1.3.3'
  gem 'localeapp'
  gem 'guard-rspec', require: false
  gem 'parallel_tests'
  gem 'fuubar'
  gem 'factory_girl_rails'
end

group :test, :development do
  gem 'sqlite3'
  gem 'database_cleaner'
end

group :test do
  gem 'rspec-rails', '3.3.3'
  gem 'capybara', '2.4.4'
  gem 'capybara-screenshot', '~> 1.0'
  gem 'poltergeist', '~> 1.6'
  gem 'simplecov'
  gem 'i18n-spec'
end

group :production do
  gem 'pg', '0.17.1'
  gem 'rails_12factor', '0.0.3'
  gem 'passenger', '4.0.57'
end

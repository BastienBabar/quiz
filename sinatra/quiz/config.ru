# Load path and gems/bundler
$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

require "bundler"
Bundler.require

# Local config
require "find"

%w{config/initializers lib}.each do |load_path|
  Find.find(load_path) { |f|
    require f unless f.match(/\/\..+$/) || File.directory?(f)
  }
end

configure do
  I18n.config.available_locales = :en
  I18n.default_locale = :en
  I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
  I18n.load_path += Dir[File.join('config', 'locales', '*.yml')]
  I18n.backend.load_translations
end

use Rack::Locale
# Load app
require "quiz"
run Quiz

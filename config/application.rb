require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Quiz
  class Application < Rails::Application
    config.cache_store = :redis_store, ENV['REDIS_URL']

    config.i18n.default_locale = :en
    config.load_defaults 5.1

    config.active_job.queue_adapter = :resque

    # Default Application Settings
    config.application_name = "Quiz"
    config.application_creator = "Bastien Barbé"

    config.autoload_paths << "#{config.root}/lib"
  end
end

require Dir.pwd + "/lib"

require "sinatra"
require "sinatra/config_file"

require "i18n"
require 'i18n/backend/fallbacks'

class Quiz < Sinatra::Base
  register Sinatra::ConfigFile
  config_file File.join('config', 'news.yml')
  I18n.load_path = Dir[File.join(settings.root, 'locales', '*.yml')]
  I18n.backend.load_translations
  set :public_folder => "public", :static => true


end
before '/' do
  I18n.locale = params[:locale]  || I18n.default_locale
end
get '/' do
  'hey ho'
  # @news = settings.news
  slim :index
end
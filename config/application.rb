require_relative 'boot'

require 'rails/all'
require 'sprockets/es6'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bunny
  class Application < Rails::Application
    config.browserify_rails.commandline_options = "-t [ babelify --presets [ es2015 react stage-0 ] --plugins [ syntax-async-functions transform-regenerator ] ]"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

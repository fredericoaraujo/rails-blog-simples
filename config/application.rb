require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.i18n.default_locale = :"pt-BR"
    config.time_zone = 'Brasilia'

    # to enable only pluralization rules, but disable all other features
    config.rails_i18n.enabled_modules = [:pluralization]

    # to enable pluralization and ordinals
    config.rails_i18n.enabled_modules = [:pluralization, :ordinals]
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

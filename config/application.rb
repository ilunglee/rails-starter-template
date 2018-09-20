require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsTemplate

  class Application < Rails::Application

    # Turn off these assets on scaffold
    config.generators do |g|
      g.javascripts false
      g.stylesheets false
      g.helper false
      g.test_framework :rspec, fixture: false
      g.template_engine :slim
      g.view_specs      false
      g.helper_specs    false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.paths     << Rails.root.join('app', 'assets', 'fonts')
    config.autoload_paths   << Rails.root.join('app', 'services', '*')
    config.autoload_paths   << Rails.root.join('app', 'validators', '*')
    config.eager_load_paths << Rails.root.join('lib')
    config.i18n.default_locale = :en
    # config.exceptions_app      = routes

  end

end

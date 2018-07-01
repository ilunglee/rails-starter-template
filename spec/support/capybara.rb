# require 'capybara-screenshot/rspec'

RSpec.configure do |_config|
  # Use webkit instead of Rspec Selenium default
  Capybara.javascript_driver = :webkit
end

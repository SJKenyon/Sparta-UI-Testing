require 'capybara'
#alow access to the superclass inside the spec helper
require_relative '../lib/bbc_site'

# Makes th euotput nicely formatted
RSpec.configure do |config|
  config.formatter = :documentation
end

#CAPYBARA built around Selenium so need to configure the driver from here. Set up the driver AS WE RUN RSPEC
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)

end

#Cap config methods.
Capybara.configure do |config|
  #If you don't include this it will not allow you to acces thing s that are hidden to the user but
  # available in the DOM. We want to access those!
  config.ignore_hidden_elements = false

  # Only wait 10s for it to happen
  config.default_max_wait_time = 10

  # Use chrome as default browser
  config.default_driver = :chrome
end
